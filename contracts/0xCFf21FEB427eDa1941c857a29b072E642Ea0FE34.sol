contract main {




// =====================  Runtime code  =====================


address owner;
address sub_48af48a5Address;
address sub_b9cfe2a8Address;
address stor3;
uint256 sub_81925bb8;
uint256 sub_d617927e;
uint256 sub_5fc5e020;
uint256 sub_c383f77b;
uint256 sub_f434ae7d;
uint256 stor9;
uint256 sub_aec4ffd5;
uint256 stor11;
uint256 sub_c688e671;
uint256 sub_6805a07c;
mapping of struct sub_9d9c453e;
array of address sub_e5a85bf1;

function sub_48af48a5(?) {
    return sub_48af48a5Address
}

function sub_5fc5e020(?) {
    return sub_5fc5e020
}

function sub_6805a07c(?) {
    return sub_6805a07c
}

function sub_81925bb8(?) {
    return sub_81925bb8
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

function sub_c383f77b(?) {
    return sub_c383f77b
}

function sub_c688e671(?) {
    return sub_c688e671
}

function sub_d617927e(?) {
    return sub_d617927e
}

function sub_e5a85bf1(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_e5a85bf1.length
    return address(sub_e5a85bf1[arg1])
}

function sub_f434ae7d(?) {
    return sub_f434ae7d
}

function stats() {
    return sub_81925bb8, sub_e5a85bf1.length, sub_c688e671, sub_81925bb8, sub_d617927e, stor11
}

function sub_d5389126(?) {
    if block.timestamp < stor11:
        revert with 0, 17
    if block.timestamp - stor11 < stor9:
        return 0
    return 1
}

function init() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[lep][ownable] caller is not the owner'
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

function deposit(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[lep][ownable] caller is not the owner'
    if sub_81925bb8 > !arg3:
        revert with 0, 17
    sub_81925bb8 += arg3
    if sub_d617927e > !arg3:
        revert with 0, 17
    sub_d617927e += arg3
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xf0aba9cd: arg3, sub_81925bb8, ext_call.return_data[0], arg1, arg2
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
    emit 0x5809e350: sub_f434ae7d, sub_9d9c453e[msg.sender].field_512, msg.sender
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
    if sub_9d9c453e[address(arg1)].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(arg1)].field_256:
        revert with 0, 17
    if not sub_aec4ffd5:
        revert with 0, 18
    if sub_81925bb8 and sub_9d9c453e[address(arg1)].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / sub_81925bb8:
        revert with 0, 17
    if not sub_5fc5e020:
        revert with 0, 18
    if sub_9d9c453e[address(arg1)].field_512 > !(sub_81925bb8 * sub_9d9c453e[address(arg1)].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
        revert with 0, 17
    return sub_9d9c453e[address(arg1)].field_256, 
           sub_9d9c453e[address(arg1)].field_512 + (sub_81925bb8 * sub_9d9c453e[address(arg1)].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020),
           sub_9d9c453e[address(arg1)].field_0,
           bool(sub_9d9c453e[address(arg1)].field_768)
}

function drain() {
    if not sub_9d9c453e[msg.sender].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[lep][staking] you did not stake any tokens!'
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_9d9c453e[msg.sender].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '[lep][staking] token transfer failed!'
    if sub_6805a07c < 1:
        revert with 0, 17
    sub_6805a07c--
    idx = 0
    while idx < sub_e5a85bf1.length:
        mem[0] = 15
        if address(sub_e5a85bf1[idx]) == msg.sender:
            if sub_e5a85bf1.length < 1:
                revert with 0, 17
            if sub_e5a85bf1.length - 1 >= sub_e5a85bf1.length:
                revert with 0, 50
            if idx >= sub_e5a85bf1.length:
                revert with 0, 50
            address(sub_e5a85bf1[idx]) = address(sub_e5a85bf1[sub_e5a85bf1.length])
            if not sub_e5a85bf1.length:
                revert with 0, 49
            mem[0] = 15
            address(sub_e5a85bf1[sub_e5a85bf1.length]) = 0
            sub_e5a85bf1.length--
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if sub_aec4ffd5 < sub_9d9c453e[msg.sender].field_256:
        revert with 0, 17
    sub_aec4ffd5 -= sub_9d9c453e[msg.sender].field_256
    sub_9d9c453e[msg.sender].field_256 = 0
    sub_9d9c453e[msg.sender].field_512 = 0
    if sub_c688e671 < sub_e5a85bf1.length:
        revert with 0, 17
    emit 0xfef58ee6: (sub_c688e671 - sub_e5a85bf1.length)
}

function update() {
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_81925bb8 > ext_call.return_data[0]:
        sub_81925bb8 = ext_call.return_data[0]
    if sub_81925bb8 > 0:
        if sub_aec4ffd5 > 0:
            if sub_e5a85bf1.length:
                idx = 0
                s = 0
                while idx < sub_e5a85bf1.length:
                    if not sub_81925bb8:
                        stor11 = block.timestamp
                    if idx >= sub_e5a85bf1.length:
                        revert with 0, 50
                    if sub_9d9c453e[address(stor15[idx])].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(stor15[idx])].field_256:
                        revert with 0, 17
                    if not sub_aec4ffd5:
                        revert with 0, 18
                    if sub_81925bb8 and sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / sub_81925bb8:
                        revert with 0, 17
                    if not sub_5fc5e020:
                        revert with 0, 18
                    if idx >= sub_e5a85bf1.length:
                        revert with 0, 50
                    if idx >= sub_e5a85bf1.length:
                        revert with 0, 50
                    if sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020 <= sub_81925bb8:
                        if not sub_9d9c453e[address(stor15[idx])].field_768:
                            if sub_9d9c453e[address(stor15[idx])].field_512 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                revert with 0, 17
                            if idx >= sub_e5a85bf1.length:
                                revert with 0, 50
                            mem[0] = address(sub_e5a85bf1[idx])
                            mem[32] = 14
                            sub_9d9c453e[address(stor15[idx])].field_512 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                        else:
                            if sub_9d9c453e[address(stor15[idx])].field_256 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                revert with 0, 17
                            if idx >= sub_e5a85bf1.length:
                                revert with 0, 50
                            mem[0] = address(sub_e5a85bf1[idx])
                            mem[32] = 14
                            sub_9d9c453e[address(stor15[idx])].field_256 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                            if sub_aec4ffd5 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                revert with 0, 17
                            sub_aec4ffd5 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                        if sub_81925bb8 < sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020:
                            revert with 0, 17
                        sub_81925bb8 -= sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                        continue 
                    if not sub_9d9c453e[address(stor15[idx])].field_768:
                        if sub_9d9c453e[address(stor15[idx])].field_512 > !sub_81925bb8:
                            revert with 0, 17
                        if idx >= sub_e5a85bf1.length:
                            revert with 0, 50
                        mem[0] = address(sub_e5a85bf1[idx])
                        mem[32] = 14
                        sub_9d9c453e[address(stor15[idx])].field_512 += sub_81925bb8
                    else:
                        if sub_9d9c453e[address(stor15[idx])].field_256 > !sub_81925bb8:
                            revert with 0, 17
                        if idx >= sub_e5a85bf1.length:
                            revert with 0, 50
                        mem[0] = address(sub_e5a85bf1[idx])
                        mem[32] = 14
                        sub_9d9c453e[address(stor15[idx])].field_256 += sub_81925bb8
                        if sub_aec4ffd5 > !sub_81925bb8:
                            revert with 0, 17
                        sub_aec4ffd5 += sub_81925bb8
                    if sub_81925bb8 < sub_81925bb8:
                        revert with 0, 17
                    sub_81925bb8 = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = sub_81925bb8
                    continue 
                stor11 = block.timestamp
}

function restake() {
    if not sub_9d9c453e[msg.sender].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[lep][staking] you did not stake any tokens!'
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_81925bb8 > ext_call.return_data[0]:
        sub_81925bb8 = ext_call.return_data[0]
    if sub_81925bb8 <= 0:
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
            if sub_e5a85bf1.length:
                idx = 0
                s = 0
                while idx < sub_e5a85bf1.length:
                    if not sub_81925bb8:
                        stor11 = block.timestamp
                        if not sub_9d9c453e[msg.sender].field_768:
                            sub_9d9c453e[msg.sender].field_768 = 1
                        else:
                            sub_9d9c453e[msg.sender].field_768 = 0
                        emit 0x62f94ded: sub_f434ae7d, bool(sub_9d9c453e[msg.sender].field_768), msg.sender
                        return bool(sub_9d9c453e[msg.sender].field_768)
                    if idx >= sub_e5a85bf1.length:
                        revert with 0, 50
                    if sub_9d9c453e[address(stor15[idx])].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(stor15[idx])].field_256:
                        revert with 0, 17
                    if not sub_aec4ffd5:
                        revert with 0, 18
                    if sub_81925bb8 and sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / sub_81925bb8:
                        revert with 0, 17
                    if not sub_5fc5e020:
                        revert with 0, 18
                    if idx >= sub_e5a85bf1.length:
                        revert with 0, 50
                    if idx >= sub_e5a85bf1.length:
                        revert with 0, 50
                    if sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020 <= sub_81925bb8:
                        if not sub_9d9c453e[address(stor15[idx])].field_768:
                            if sub_9d9c453e[address(stor15[idx])].field_512 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                revert with 0, 17
                            if idx >= sub_e5a85bf1.length:
                                revert with 0, 50
                            mem[0] = address(sub_e5a85bf1[idx])
                            mem[32] = 14
                            sub_9d9c453e[address(stor15[idx])].field_512 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                        else:
                            if sub_9d9c453e[address(stor15[idx])].field_256 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                revert with 0, 17
                            if idx >= sub_e5a85bf1.length:
                                revert with 0, 50
                            mem[0] = address(sub_e5a85bf1[idx])
                            mem[32] = 14
                            sub_9d9c453e[address(stor15[idx])].field_256 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                            if sub_aec4ffd5 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                revert with 0, 17
                            sub_aec4ffd5 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                        if sub_81925bb8 < sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020:
                            revert with 0, 17
                        sub_81925bb8 -= sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                        continue 
                    if not sub_9d9c453e[address(stor15[idx])].field_768:
                        if sub_9d9c453e[address(stor15[idx])].field_512 > !sub_81925bb8:
                            revert with 0, 17
                        if idx >= sub_e5a85bf1.length:
                            revert with 0, 50
                        mem[0] = address(sub_e5a85bf1[idx])
                        mem[32] = 14
                        sub_9d9c453e[address(stor15[idx])].field_512 += sub_81925bb8
                    else:
                        if sub_9d9c453e[address(stor15[idx])].field_256 > !sub_81925bb8:
                            revert with 0, 17
                        if idx >= sub_e5a85bf1.length:
                            revert with 0, 50
                        mem[0] = address(sub_e5a85bf1[idx])
                        mem[32] = 14
                        sub_9d9c453e[address(stor15[idx])].field_256 += sub_81925bb8
                        if sub_aec4ffd5 > !sub_81925bb8:
                            revert with 0, 17
                        sub_aec4ffd5 += sub_81925bb8
                    if sub_81925bb8 < sub_81925bb8:
                        revert with 0, 17
                    sub_81925bb8 = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = sub_81925bb8
                    continue 
                stor11 = block.timestamp
            if not sub_9d9c453e[msg.sender].field_768:
                sub_9d9c453e[msg.sender].field_768 = 1
            else:
                sub_9d9c453e[msg.sender].field_768 = 0
    emit 0x62f94ded: sub_f434ae7d, bool(sub_9d9c453e[msg.sender].field_768), msg.sender
    return bool(sub_9d9c453e[msg.sender].field_768)
}

function exit() {
    if not sub_9d9c453e[msg.sender].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[lep][staking] you did not stake any tokens!'
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_81925bb8 > ext_call.return_data[0]:
        sub_81925bb8 = ext_call.return_data[0]
    if sub_81925bb8 > 0:
        if sub_aec4ffd5 > 0:
            if sub_e5a85bf1.length:
                idx = 0
                s = 0
                while idx < sub_e5a85bf1.length:
                    if sub_81925bb8:
                        if idx >= sub_e5a85bf1.length:
                            revert with 0, 50
                        if sub_9d9c453e[address(stor15[idx])].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(stor15[idx])].field_256:
                            revert with 0, 17
                        if not sub_aec4ffd5:
                            revert with 0, 18
                        if sub_81925bb8 and sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / sub_81925bb8:
                            revert with 0, 17
                        if not sub_5fc5e020:
                            revert with 0, 18
                        if idx >= sub_e5a85bf1.length:
                            revert with 0, 50
                        if idx >= sub_e5a85bf1.length:
                            revert with 0, 50
                        if sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020 <= sub_81925bb8:
                            if not sub_9d9c453e[address(stor15[idx])].field_768:
                                if sub_9d9c453e[address(stor15[idx])].field_512 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                    revert with 0, 17
                                if idx >= sub_e5a85bf1.length:
                                    revert with 0, 50
                                mem[0] = address(sub_e5a85bf1[idx])
                                mem[32] = 14
                                sub_9d9c453e[address(stor15[idx])].field_512 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                            else:
                                if sub_9d9c453e[address(stor15[idx])].field_256 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                    revert with 0, 17
                                if idx >= sub_e5a85bf1.length:
                                    revert with 0, 50
                                mem[0] = address(sub_e5a85bf1[idx])
                                mem[32] = 14
                                sub_9d9c453e[address(stor15[idx])].field_256 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                if sub_aec4ffd5 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                    revert with 0, 17
                                sub_aec4ffd5 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                            if sub_81925bb8 < sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020:
                                revert with 0, 17
                            sub_81925bb8 -= sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                            continue 
                        if not sub_9d9c453e[address(stor15[idx])].field_768:
                            if sub_9d9c453e[address(stor15[idx])].field_512 > !sub_81925bb8:
                                revert with 0, 17
                            if idx >= sub_e5a85bf1.length:
                                revert with 0, 50
                            mem[0] = address(sub_e5a85bf1[idx])
                            mem[32] = 14
                            sub_9d9c453e[address(stor15[idx])].field_512 += sub_81925bb8
                        else:
                            if sub_9d9c453e[address(stor15[idx])].field_256 > !sub_81925bb8:
                                revert with 0, 17
                            if idx >= sub_e5a85bf1.length:
                                revert with 0, 50
                            mem[0] = address(sub_e5a85bf1[idx])
                            mem[32] = 14
                            sub_9d9c453e[address(stor15[idx])].field_256 += sub_81925bb8
                            if sub_aec4ffd5 > !sub_81925bb8:
                                revert with 0, 17
                            sub_aec4ffd5 += sub_81925bb8
                        if sub_81925bb8 < sub_81925bb8:
                            revert with 0, 17
                        sub_81925bb8 = 0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = sub_81925bb8
                        continue 
                    stor11 = block.timestamp
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
                        if sub_6805a07c < 1:
                            revert with 0, 17
                        sub_6805a07c--
                        idx = 0
                        while idx < sub_e5a85bf1.length:
                            mem[0] = 15
                            if address(sub_e5a85bf1[idx]) == msg.sender:
                                if sub_e5a85bf1.length < 1:
                                    revert with 0, 17
                                if sub_e5a85bf1.length - 1 >= sub_e5a85bf1.length:
                                    revert with 0, 50
                                if idx >= sub_e5a85bf1.length:
                                    revert with 0, 50
                                address(sub_e5a85bf1[idx]) = address(sub_e5a85bf1[sub_e5a85bf1.length])
                                if not sub_e5a85bf1.length:
                                    revert with 0, 49
                                mem[0] = 15
                                address(sub_e5a85bf1[sub_e5a85bf1.length]) = 0
                                sub_e5a85bf1.length--
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if sub_aec4ffd5 < sub_9d9c453e[msg.sender].field_256:
                            revert with 0, 17
                        sub_aec4ffd5 -= sub_9d9c453e[msg.sender].field_256
                        emit 0xd1d44d34: sub_f434ae7d, sub_9d9c453e[msg.sender].field_256 + sub_9d9c453e[msg.sender].field_512, sub_9d9c453e[msg.sender].field_0, msg.sender
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
                        if sub_6805a07c < 1:
                            revert with 0, 17
                        sub_6805a07c--
                        idx = 0
                        while idx < sub_e5a85bf1.length:
                            mem[0] = 15
                            if address(sub_e5a85bf1[idx]) == msg.sender:
                                if sub_e5a85bf1.length < 1:
                                    revert with 0, 17
                                if sub_e5a85bf1.length - 1 >= sub_e5a85bf1.length:
                                    revert with 0, 50
                                if idx >= sub_e5a85bf1.length:
                                    revert with 0, 50
                                address(sub_e5a85bf1[idx]) = address(sub_e5a85bf1[sub_e5a85bf1.length])
                                if not sub_e5a85bf1.length:
                                    revert with 0, 49
                                mem[0] = 15
                                address(sub_e5a85bf1[sub_e5a85bf1.length]) = 0
                                sub_e5a85bf1.length--
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if sub_aec4ffd5 < sub_9d9c453e[msg.sender].field_256:
                            revert with 0, 17
                        sub_aec4ffd5 -= sub_9d9c453e[msg.sender].field_256
                        emit 0xd1d44d34: sub_f434ae7d, ext_call.return_data[0], sub_9d9c453e[msg.sender].field_0, msg.sender
                    if sub_c688e671 < sub_e5a85bf1.length:
                        revert with 0, 17
                    emit 0xfef58ee6: (sub_c688e671 - sub_e5a85bf1.length)
                stor11 = block.timestamp
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
        if sub_6805a07c < 1:
            revert with 0, 17
        sub_6805a07c--
        idx = 0
        while idx < sub_e5a85bf1.length:
            mem[0] = 15
            if address(sub_e5a85bf1[idx]) == msg.sender:
                if sub_e5a85bf1.length < 1:
                    revert with 0, 17
                if sub_e5a85bf1.length - 1 >= sub_e5a85bf1.length:
                    revert with 0, 50
                if idx >= sub_e5a85bf1.length:
                    revert with 0, 50
                address(sub_e5a85bf1[idx]) = address(sub_e5a85bf1[sub_e5a85bf1.length])
                if not sub_e5a85bf1.length:
                    revert with 0, 49
                mem[0] = 15
                address(sub_e5a85bf1[sub_e5a85bf1.length]) = 0
                sub_e5a85bf1.length--
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if sub_aec4ffd5 < sub_9d9c453e[msg.sender].field_256:
            revert with 0, 17
        sub_aec4ffd5 -= sub_9d9c453e[msg.sender].field_256
        emit 0xd1d44d34: sub_f434ae7d, sub_9d9c453e[msg.sender].field_256 + sub_9d9c453e[msg.sender].field_512, sub_9d9c453e[msg.sender].field_0, msg.sender
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
        if sub_6805a07c < 1:
            revert with 0, 17
        sub_6805a07c--
        idx = 0
        while idx < sub_e5a85bf1.length:
            mem[0] = 15
            if address(sub_e5a85bf1[idx]) == msg.sender:
                if sub_e5a85bf1.length < 1:
                    revert with 0, 17
                if sub_e5a85bf1.length - 1 >= sub_e5a85bf1.length:
                    revert with 0, 50
                if idx >= sub_e5a85bf1.length:
                    revert with 0, 50
                address(sub_e5a85bf1[idx]) = address(sub_e5a85bf1[sub_e5a85bf1.length])
                if not sub_e5a85bf1.length:
                    revert with 0, 49
                mem[0] = 15
                address(sub_e5a85bf1[sub_e5a85bf1.length]) = 0
                sub_e5a85bf1.length--
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if sub_aec4ffd5 < sub_9d9c453e[msg.sender].field_256:
            revert with 0, 17
        sub_aec4ffd5 -= sub_9d9c453e[msg.sender].field_256
        emit 0xd1d44d34: sub_f434ae7d, ext_call.return_data[0], sub_9d9c453e[msg.sender].field_0, msg.sender
    if sub_c688e671 < sub_e5a85bf1.length:
        revert with 0, 17
    emit 0xfef58ee6: (sub_c688e671 - sub_e5a85bf1.length)
}

function unstake(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not sub_9d9c453e[msg.sender].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[lep][staking] you did not stake any tokens!'
    if arg1 > sub_9d9c453e[msg.sender].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '[lep][staking] you can't unstake more tokens than you have!'
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_81925bb8 > ext_call.return_data[0]:
        sub_81925bb8 = ext_call.return_data[0]
    if sub_81925bb8 > 0:
        if sub_aec4ffd5 > 0:
            if sub_e5a85bf1.length:
                idx = 0
                s = 0
                while idx < sub_e5a85bf1.length:
                    if sub_81925bb8:
                        if idx >= sub_e5a85bf1.length:
                            revert with 0, 50
                        if sub_9d9c453e[address(stor15[idx])].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(stor15[idx])].field_256:
                            revert with 0, 17
                        if not sub_aec4ffd5:
                            revert with 0, 18
                        if sub_81925bb8 and sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / sub_81925bb8:
                            revert with 0, 17
                        if not sub_5fc5e020:
                            revert with 0, 18
                        if idx >= sub_e5a85bf1.length:
                            revert with 0, 50
                        if idx >= sub_e5a85bf1.length:
                            revert with 0, 50
                        if sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020 <= sub_81925bb8:
                            if not sub_9d9c453e[address(stor15[idx])].field_768:
                                if sub_9d9c453e[address(stor15[idx])].field_512 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                    revert with 0, 17
                                if idx >= sub_e5a85bf1.length:
                                    revert with 0, 50
                                mem[0] = address(sub_e5a85bf1[idx])
                                mem[32] = 14
                                sub_9d9c453e[address(stor15[idx])].field_512 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                            else:
                                if sub_9d9c453e[address(stor15[idx])].field_256 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                    revert with 0, 17
                                if idx >= sub_e5a85bf1.length:
                                    revert with 0, 50
                                mem[0] = address(sub_e5a85bf1[idx])
                                mem[32] = 14
                                sub_9d9c453e[address(stor15[idx])].field_256 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                if sub_aec4ffd5 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                    revert with 0, 17
                                sub_aec4ffd5 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                            if sub_81925bb8 < sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020:
                                revert with 0, 17
                            sub_81925bb8 -= sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                            continue 
                        if not sub_9d9c453e[address(stor15[idx])].field_768:
                            if sub_9d9c453e[address(stor15[idx])].field_512 > !sub_81925bb8:
                                revert with 0, 17
                            if idx >= sub_e5a85bf1.length:
                                revert with 0, 50
                            mem[0] = address(sub_e5a85bf1[idx])
                            mem[32] = 14
                            sub_9d9c453e[address(stor15[idx])].field_512 += sub_81925bb8
                        else:
                            if sub_9d9c453e[address(stor15[idx])].field_256 > !sub_81925bb8:
                                revert with 0, 17
                            if idx >= sub_e5a85bf1.length:
                                revert with 0, 50
                            mem[0] = address(sub_e5a85bf1[idx])
                            mem[32] = 14
                            sub_9d9c453e[address(stor15[idx])].field_256 += sub_81925bb8
                            if sub_aec4ffd5 > !sub_81925bb8:
                                revert with 0, 17
                            sub_aec4ffd5 += sub_81925bb8
                        if sub_81925bb8 < sub_81925bb8:
                            revert with 0, 17
                        sub_81925bb8 = 0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = sub_81925bb8
                        continue 
                    stor11 = block.timestamp
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 != sub_9d9c453e[msg.sender].field_256:
                        require ext_code.size(stor3)
                        if arg1 <= ext_call.return_data[0]:
                            call stor3.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, '[lep][staking] token transfer failed!'
                            if sub_9d9c453e[msg.sender].field_256 < arg1:
                                revert with 0, 17
                            sub_9d9c453e[msg.sender].field_256 -= arg1
                            if sub_aec4ffd5 < arg1:
                                revert with 0, 17
                            sub_aec4ffd5 -= arg1
                            emit 0x3bf8e204: sub_f434ae7d, arg1, sub_9d9c453e[msg.sender].field_256, msg.sender
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
                            if sub_9d9c453e[msg.sender].field_256 < ext_call.return_data[0]:
                                revert with 0, 17
                            sub_9d9c453e[msg.sender].field_256 -= ext_call.return_data[0]
                            if sub_aec4ffd5 < ext_call.return_data[0]:
                                revert with 0, 17
                            sub_aec4ffd5 -= ext_call.return_data[0]
                            emit 0x3bf8e204: sub_f434ae7d, ext_call.return_data[0], sub_9d9c453e[msg.sender].field_256, msg.sender
                    else:
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
                            if sub_6805a07c < 1:
                                revert with 0, 17
                            sub_6805a07c--
                            idx = 0
                            while idx < sub_e5a85bf1.length:
                                mem[0] = 15
                                if address(sub_e5a85bf1[idx]) == msg.sender:
                                    if sub_e5a85bf1.length < 1:
                                        revert with 0, 17
                                    if sub_e5a85bf1.length - 1 >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    address(sub_e5a85bf1[idx]) = address(sub_e5a85bf1[sub_e5a85bf1.length])
                                    if not sub_e5a85bf1.length:
                                        revert with 0, 49
                                    mem[0] = 15
                                    address(sub_e5a85bf1[sub_e5a85bf1.length]) = 0
                                    sub_e5a85bf1.length--
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if sub_aec4ffd5 < sub_9d9c453e[msg.sender].field_256:
                                revert with 0, 17
                            sub_aec4ffd5 -= sub_9d9c453e[msg.sender].field_256
                            emit 0xd1d44d34: sub_f434ae7d, sub_9d9c453e[msg.sender].field_256 + sub_9d9c453e[msg.sender].field_512, sub_9d9c453e[msg.sender].field_0, msg.sender
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
                            if sub_6805a07c < 1:
                                revert with 0, 17
                            sub_6805a07c--
                            idx = 0
                            while idx < sub_e5a85bf1.length:
                                mem[0] = 15
                                if address(sub_e5a85bf1[idx]) == msg.sender:
                                    if sub_e5a85bf1.length < 1:
                                        revert with 0, 17
                                    if sub_e5a85bf1.length - 1 >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    address(sub_e5a85bf1[idx]) = address(sub_e5a85bf1[sub_e5a85bf1.length])
                                    if not sub_e5a85bf1.length:
                                        revert with 0, 49
                                    mem[0] = 15
                                    address(sub_e5a85bf1[sub_e5a85bf1.length]) = 0
                                    sub_e5a85bf1.length--
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if sub_aec4ffd5 < sub_9d9c453e[msg.sender].field_256:
                                revert with 0, 17
                            sub_aec4ffd5 -= sub_9d9c453e[msg.sender].field_256
                            emit 0xd1d44d34: sub_f434ae7d, ext_call.return_data[0], sub_9d9c453e[msg.sender].field_0, msg.sender
                        if sub_c688e671 < sub_e5a85bf1.length:
                            revert with 0, 17
                        emit 0xfef58ee6: (sub_c688e671 - sub_e5a85bf1.length)
                stor11 = block.timestamp
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 != sub_9d9c453e[msg.sender].field_256:
        require ext_code.size(stor3)
        if arg1 <= ext_call.return_data[0]:
            call stor3.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, '[lep][staking] token transfer failed!'
            if sub_9d9c453e[msg.sender].field_256 < arg1:
                revert with 0, 17
            sub_9d9c453e[msg.sender].field_256 -= arg1
            if sub_aec4ffd5 < arg1:
                revert with 0, 17
            sub_aec4ffd5 -= arg1
            emit 0x3bf8e204: sub_f434ae7d, arg1, sub_9d9c453e[msg.sender].field_256, msg.sender
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
            if sub_9d9c453e[msg.sender].field_256 < ext_call.return_data[0]:
                revert with 0, 17
            sub_9d9c453e[msg.sender].field_256 -= ext_call.return_data[0]
            if sub_aec4ffd5 < ext_call.return_data[0]:
                revert with 0, 17
            sub_aec4ffd5 -= ext_call.return_data[0]
            emit 0x3bf8e204: sub_f434ae7d, ext_call.return_data[0], sub_9d9c453e[msg.sender].field_256, msg.sender
    else:
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
            if sub_6805a07c < 1:
                revert with 0, 17
            sub_6805a07c--
            idx = 0
            while idx < sub_e5a85bf1.length:
                mem[0] = 15
                if address(sub_e5a85bf1[idx]) == msg.sender:
                    if sub_e5a85bf1.length < 1:
                        revert with 0, 17
                    if sub_e5a85bf1.length - 1 >= sub_e5a85bf1.length:
                        revert with 0, 50
                    if idx >= sub_e5a85bf1.length:
                        revert with 0, 50
                    address(sub_e5a85bf1[idx]) = address(sub_e5a85bf1[sub_e5a85bf1.length])
                    if not sub_e5a85bf1.length:
                        revert with 0, 49
                    mem[0] = 15
                    address(sub_e5a85bf1[sub_e5a85bf1.length]) = 0
                    sub_e5a85bf1.length--
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if sub_aec4ffd5 < sub_9d9c453e[msg.sender].field_256:
                revert with 0, 17
            sub_aec4ffd5 -= sub_9d9c453e[msg.sender].field_256
            emit 0xd1d44d34: sub_f434ae7d, sub_9d9c453e[msg.sender].field_256 + sub_9d9c453e[msg.sender].field_512, sub_9d9c453e[msg.sender].field_0, msg.sender
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
            if sub_6805a07c < 1:
                revert with 0, 17
            sub_6805a07c--
            idx = 0
            while idx < sub_e5a85bf1.length:
                mem[0] = 15
                if address(sub_e5a85bf1[idx]) == msg.sender:
                    if sub_e5a85bf1.length < 1:
                        revert with 0, 17
                    if sub_e5a85bf1.length - 1 >= sub_e5a85bf1.length:
                        revert with 0, 50
                    if idx >= sub_e5a85bf1.length:
                        revert with 0, 50
                    address(sub_e5a85bf1[idx]) = address(sub_e5a85bf1[sub_e5a85bf1.length])
                    if not sub_e5a85bf1.length:
                        revert with 0, 49
                    mem[0] = 15
                    address(sub_e5a85bf1[sub_e5a85bf1.length]) = 0
                    sub_e5a85bf1.length--
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if sub_aec4ffd5 < sub_9d9c453e[msg.sender].field_256:
                revert with 0, 17
            sub_aec4ffd5 -= sub_9d9c453e[msg.sender].field_256
            emit 0xd1d44d34: sub_f434ae7d, ext_call.return_data[0], sub_9d9c453e[msg.sender].field_0, msg.sender
        if sub_c688e671 < sub_e5a85bf1.length:
            revert with 0, 17
        emit 0xfef58ee6: (sub_c688e671 - sub_e5a85bf1.length)
}

function sub_c648e633(?) {
    require calldata.size - 4 >= 96
    require arg2 == bool(arg2)
    require arg3 == bool(arg3)
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
        require ext_code.size(stor3)
        staticcall stor3.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_81925bb8 > ext_call.return_data[0]:
            sub_81925bb8 = ext_call.return_data[0]
        if sub_81925bb8 > 0:
            if sub_aec4ffd5 > 0:
                if sub_e5a85bf1.length:
                    idx = 0
                    s = 0
                    while idx < sub_e5a85bf1.length:
                        if sub_81925bb8:
                            if idx >= sub_e5a85bf1.length:
                                revert with 0, 50
                            if sub_9d9c453e[address(stor15[idx])].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(stor15[idx])].field_256:
                                revert with 0, 17
                            if not sub_aec4ffd5:
                                revert with 0, 18
                            if sub_81925bb8 and sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / sub_81925bb8:
                                revert with 0, 17
                            if not sub_5fc5e020:
                                revert with 0, 18
                            if idx >= sub_e5a85bf1.length:
                                revert with 0, 50
                            if idx >= sub_e5a85bf1.length:
                                revert with 0, 50
                            if sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020 <= sub_81925bb8:
                                if not sub_9d9c453e[address(stor15[idx])].field_768:
                                    if sub_9d9c453e[address(stor15[idx])].field_512 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                        revert with 0, 17
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    mem[0] = address(sub_e5a85bf1[idx])
                                    mem[32] = 14
                                    sub_9d9c453e[address(stor15[idx])].field_512 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                else:
                                    if sub_9d9c453e[address(stor15[idx])].field_256 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                        revert with 0, 17
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    mem[0] = address(sub_e5a85bf1[idx])
                                    mem[32] = 14
                                    sub_9d9c453e[address(stor15[idx])].field_256 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                    if sub_aec4ffd5 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                        revert with 0, 17
                                    sub_aec4ffd5 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                if sub_81925bb8 < sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020:
                                    revert with 0, 17
                                sub_81925bb8 -= sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                continue 
                            if not sub_9d9c453e[address(stor15[idx])].field_768:
                                if sub_9d9c453e[address(stor15[idx])].field_512 > !sub_81925bb8:
                                    revert with 0, 17
                                if idx >= sub_e5a85bf1.length:
                                    revert with 0, 50
                                mem[0] = address(sub_e5a85bf1[idx])
                                mem[32] = 14
                                sub_9d9c453e[address(stor15[idx])].field_512 += sub_81925bb8
                            else:
                                if sub_9d9c453e[address(stor15[idx])].field_256 > !sub_81925bb8:
                                    revert with 0, 17
                                if idx >= sub_e5a85bf1.length:
                                    revert with 0, 50
                                mem[0] = address(sub_e5a85bf1[idx])
                                mem[32] = 14
                                sub_9d9c453e[address(stor15[idx])].field_256 += sub_81925bb8
                                if sub_aec4ffd5 > !sub_81925bb8:
                                    revert with 0, 17
                                sub_aec4ffd5 += sub_81925bb8
                            if sub_81925bb8 < sub_81925bb8:
                                revert with 0, 17
                            sub_81925bb8 = 0
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = sub_81925bb8
                            continue 
                        stor11 = block.timestamp
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
                            if arg1 and sub_5fc5e020 > -1 / arg1:
                                revert with 0, 17
                            if not sub_aec4ffd5:
                                revert with 0, 18
                            emit 0xa5cc51a9: sub_f434ae7d, arg1, arg1, arg1 * sub_5fc5e020 / sub_aec4ffd5, sub_5fc5e020, 0, msg.sender
                        if sub_c688e671 < sub_e5a85bf1.length:
                            revert with 0, 17
                        emit 0xfef58ee6: (sub_c688e671 - sub_e5a85bf1.length)
                    stor11 = block.timestamp
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
        require ext_code.size(stor3)
        staticcall stor3.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_81925bb8 > ext_call.return_data[0]:
            sub_81925bb8 = ext_call.return_data[0]
        if sub_81925bb8 > 0:
            if sub_aec4ffd5 > 0:
                if sub_e5a85bf1.length:
                    idx = 0
                    s = 0
                    while idx < sub_e5a85bf1.length:
                        if sub_81925bb8:
                            if idx >= sub_e5a85bf1.length:
                                revert with 0, 50
                            if sub_9d9c453e[address(stor15[idx])].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(stor15[idx])].field_256:
                                revert with 0, 17
                            if not sub_aec4ffd5:
                                revert with 0, 18
                            if sub_81925bb8 and sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / sub_81925bb8:
                                revert with 0, 17
                            if not sub_5fc5e020:
                                revert with 0, 18
                            if idx >= sub_e5a85bf1.length:
                                revert with 0, 50
                            if idx >= sub_e5a85bf1.length:
                                revert with 0, 50
                            if sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020 <= sub_81925bb8:
                                if not sub_9d9c453e[address(stor15[idx])].field_768:
                                    if sub_9d9c453e[address(stor15[idx])].field_512 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                        revert with 0, 17
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    mem[0] = address(sub_e5a85bf1[idx])
                                    mem[32] = 14
                                    sub_9d9c453e[address(stor15[idx])].field_512 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                else:
                                    if sub_9d9c453e[address(stor15[idx])].field_256 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                        revert with 0, 17
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    mem[0] = address(sub_e5a85bf1[idx])
                                    mem[32] = 14
                                    sub_9d9c453e[address(stor15[idx])].field_256 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                    if sub_aec4ffd5 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                        revert with 0, 17
                                    sub_aec4ffd5 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                if sub_81925bb8 < sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020:
                                    revert with 0, 17
                                sub_81925bb8 -= sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                continue 
                            if not sub_9d9c453e[address(stor15[idx])].field_768:
                                if sub_9d9c453e[address(stor15[idx])].field_512 > !sub_81925bb8:
                                    revert with 0, 17
                                if idx >= sub_e5a85bf1.length:
                                    revert with 0, 50
                                mem[0] = address(sub_e5a85bf1[idx])
                                mem[32] = 14
                                sub_9d9c453e[address(stor15[idx])].field_512 += sub_81925bb8
                            else:
                                if sub_9d9c453e[address(stor15[idx])].field_256 > !sub_81925bb8:
                                    revert with 0, 17
                                if idx >= sub_e5a85bf1.length:
                                    revert with 0, 50
                                mem[0] = address(sub_e5a85bf1[idx])
                                mem[32] = 14
                                sub_9d9c453e[address(stor15[idx])].field_256 += sub_81925bb8
                                if sub_aec4ffd5 > !sub_81925bb8:
                                    revert with 0, 17
                                sub_aec4ffd5 += sub_81925bb8
                            if sub_81925bb8 < sub_81925bb8:
                                revert with 0, 17
                            sub_81925bb8 = 0
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = sub_81925bb8
                            continue 
                        stor11 = block.timestamp
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
                            if ext_call.return_data[0] and sub_5fc5e020 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if not sub_aec4ffd5:
                                revert with 0, 18
                            emit 0xa5cc51a9: sub_f434ae7d, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] * sub_5fc5e020 / sub_aec4ffd5, sub_5fc5e020, 0, msg.sender
                        if sub_c688e671 < sub_e5a85bf1.length:
                            revert with 0, 17
                        emit 0xfef58ee6: (sub_c688e671 - sub_e5a85bf1.length)
                    stor11 = block.timestamp
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
            if ext_call.return_data[0] and sub_5fc5e020 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not sub_aec4ffd5:
                revert with 0, 18
            emit 0xa5cc51a9: sub_f434ae7d, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] * sub_5fc5e020 / sub_aec4ffd5, sub_5fc5e020, 0, msg.sender
    if sub_c688e671 < sub_e5a85bf1.length:
        revert with 0, 17
    emit 0xfef58ee6: (sub_c688e671 - sub_e5a85bf1.length)
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0xa2e62045(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x70a08231(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x8340f549(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if not sub_9d9c453e[address(arg1)].field_256:
                            return 0
                        return sub_9d9c453e[address(arg1)].field_256
                    if uint32(call.func_hash) >> 224 != unknown_0x715018a6(?????):
                        require unknown_0x81925bb8(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return sub_81925bb8
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, '[lep][ownable] caller is not the owner'
                    owner = 0
                    emit OwnershipTransferred(owner, 0);
                else:
                    if unknown_0x8340f549(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require arg1 == address(arg1)
                        require arg2 == address(arg2)
                        if owner != msg.sender:
                            revert with 0, '[lep][ownable] caller is not the owner'
                        if sub_81925bb8 > !arg3:
                            revert with 0, 17
                        sub_81925bb8 += arg3
                        if sub_d617927e > !arg3:
                            revert with 0, 17
                        sub_d617927e += arg3
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit 0xf0aba9cd: arg3, sub_81925bb8, ext_call.return_data[0], address(arg1), address(arg2)
                    else:
                        if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return owner
                        if uint32(call.func_hash) >> 224 != unknown_0x9890220b(?????):
                            require unknown_0x9d9c453e(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            return sub_9d9c453e[arg1].field_0, 
                                   sub_9d9c453e[arg1].field_256,
                                   sub_9d9c453e[arg1].field_512,
                                   bool(sub_9d9c453e[arg1].field_768)
                        require not msg.value
                        if not sub_9d9c453e[msg.sender].field_256:
                            revert with 0, '[lep][staking] you did not stake any tokens!'
                        require ext_code.size(stor3)
                        call stor3.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, sub_9d9c453e[msg.sender].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, '[lep][staking] token transfer failed!'
                        if sub_6805a07c < 1:
                            revert with 0, 17
                        sub_6805a07c--
                        idx = 0
                        while idx < sub_e5a85bf1.length:
                            mem[0] = 15
                            if address(sub_e5a85bf1[idx]) == msg.sender:
                                if sub_e5a85bf1.length < 1:
                                    revert with 0, 17
                                if sub_e5a85bf1.length - 1 >= sub_e5a85bf1.length:
                                    revert with 0, 50
                                if idx >= sub_e5a85bf1.length:
                                    revert with 0, 50
                                address(sub_e5a85bf1[idx]) = address(sub_e5a85bf1[sub_e5a85bf1.length])
                                if not sub_e5a85bf1.length:
                                    revert with 0, 49
                                mem[0] = 15
                                address(sub_e5a85bf1[sub_e5a85bf1.length]) = 0
                                sub_e5a85bf1.length--
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if sub_aec4ffd5 < sub_9d9c453e[msg.sender].field_256:
                            revert with 0, 17
                        sub_aec4ffd5 -= sub_9d9c453e[msg.sender].field_256
                        sub_9d9c453e[msg.sender].field_256 = 0
                        sub_9d9c453e[msg.sender].field_512 = 0
                        if sub_c688e671 < sub_e5a85bf1.length:
                            revert with 0, 17
                        emit 0xfef58ee6: (sub_c688e671 - sub_e5a85bf1.length)
            else:
                if unknown_0x4e71d92d(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x4e71d92d(?????) == uint32(call.func_hash) >> 224:
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
                        emit 0x5809e350: sub_f434ae7d, sub_9d9c453e[msg.sender].field_512, msg.sender
                    if uint32(call.func_hash) >> 224 != unknown_0x4f91440d(?????):
                        if unknown_0x5fc5e020(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return sub_5fc5e020
                        require unknown_0x6805a07c(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return sub_6805a07c
                    require not msg.value
                    if not sub_9d9c453e[msg.sender].field_256:
                        revert with 0, '[lep][staking] you did not stake any tokens!'
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_81925bb8 > ext_call.return_data[0]:
                        sub_81925bb8 = ext_call.return_data[0]
                    if sub_81925bb8 <= 0:
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
                            if sub_e5a85bf1.length:
                                idx = 0
                                s = 0
                                while idx < sub_e5a85bf1.length:
                                    if not sub_81925bb8:
                                        stor11 = block.timestamp
                                        if not sub_9d9c453e[msg.sender].field_768:
                                            sub_9d9c453e[msg.sender].field_768 = 1
                                        else:
                                            sub_9d9c453e[msg.sender].field_768 = 0
                                        emit 0x62f94ded: sub_f434ae7d, bool(sub_9d9c453e[msg.sender].field_768), msg.sender
                                        return bool(sub_9d9c453e[msg.sender].field_768)
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if sub_9d9c453e[address(stor15[idx])].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(stor15[idx])].field_256:
                                        revert with 0, 17
                                    if not sub_aec4ffd5:
                                        revert with 0, 18
                                    if sub_81925bb8 and sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / sub_81925bb8:
                                        revert with 0, 17
                                    if not sub_5fc5e020:
                                        revert with 0, 18
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020 <= sub_81925bb8:
                                        if not sub_9d9c453e[address(stor15[idx])].field_768:
                                            if sub_9d9c453e[address(stor15[idx])].field_512 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                revert with 0, 17
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            mem[0] = address(sub_e5a85bf1[idx])
                                            mem[32] = 14
                                            sub_9d9c453e[address(stor15[idx])].field_512 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                        else:
                                            if sub_9d9c453e[address(stor15[idx])].field_256 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                revert with 0, 17
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            mem[0] = address(sub_e5a85bf1[idx])
                                            mem[32] = 14
                                            sub_9d9c453e[address(stor15[idx])].field_256 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                            if sub_aec4ffd5 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                revert with 0, 17
                                            sub_aec4ffd5 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                        if sub_81925bb8 < sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020:
                                            revert with 0, 17
                                        sub_81925bb8 -= sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                        continue 
                                    if not sub_9d9c453e[address(stor15[idx])].field_768:
                                        if sub_9d9c453e[address(stor15[idx])].field_512 > !sub_81925bb8:
                                            revert with 0, 17
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        mem[0] = address(sub_e5a85bf1[idx])
                                        mem[32] = 14
                                        sub_9d9c453e[address(stor15[idx])].field_512 += sub_81925bb8
                                    else:
                                        if sub_9d9c453e[address(stor15[idx])].field_256 > !sub_81925bb8:
                                            revert with 0, 17
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        mem[0] = address(sub_e5a85bf1[idx])
                                        mem[32] = 14
                                        sub_9d9c453e[address(stor15[idx])].field_256 += sub_81925bb8
                                        if sub_aec4ffd5 > !sub_81925bb8:
                                            revert with 0, 17
                                        sub_aec4ffd5 += sub_81925bb8
                                    if sub_81925bb8 < sub_81925bb8:
                                        revert with 0, 17
                                    sub_81925bb8 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = sub_81925bb8
                                    continue 
                                stor11 = block.timestamp
                            if not sub_9d9c453e[msg.sender].field_768:
                                sub_9d9c453e[msg.sender].field_768 = 1
                            else:
                                sub_9d9c453e[msg.sender].field_768 = 0
                    emit 0x62f94ded: sub_f434ae7d, bool(sub_9d9c453e[msg.sender].field_768), msg.sender
                    return bool(sub_9d9c453e[msg.sender].field_768)
                if info(address arg1) == uint32(call.func_hash) >> 224:
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
                    if sub_9d9c453e[address(arg1)].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(arg1)].field_256:
                        revert with 0, 17
                    if not sub_aec4ffd5:
                        revert with 0, 18
                    if sub_81925bb8 and sub_9d9c453e[address(arg1)].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / sub_81925bb8:
                        revert with 0, 17
                    if not sub_5fc5e020:
                        revert with 0, 18
                    if sub_9d9c453e[address(arg1)].field_512 > !(sub_81925bb8 * sub_9d9c453e[address(arg1)].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                        revert with 0, 17
                    return sub_9d9c453e[address(arg1)].field_256, 
                           sub_9d9c453e[address(arg1)].field_512 + (sub_81925bb8 * sub_9d9c453e[address(arg1)].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020),
                           sub_9d9c453e[address(arg1)].field_0,
                           bool(sub_9d9c453e[address(arg1)].field_768)
                if uint32(call.func_hash) >> 224 != unknown_0x2e17de78(?????):
                    require unknown_0x48af48a5(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return sub_48af48a5Address
                require not msg.value
                require calldata.size - 4 >= 32
                if not sub_9d9c453e[msg.sender].field_256:
                    revert with 0, '[lep][staking] you did not stake any tokens!'
                if arg1 > sub_9d9c453e[msg.sender].field_256:
                    revert with 0, '[lep][staking] you can't unstake more tokens than you have!'
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sub_81925bb8 > ext_call.return_data[0]:
                    sub_81925bb8 = ext_call.return_data[0]
                if sub_81925bb8 > 0:
                    if sub_aec4ffd5 > 0:
                        if sub_e5a85bf1.length:
                            idx = 0
                            s = 0
                            while idx < sub_e5a85bf1.length:
                                if sub_81925bb8:
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if sub_9d9c453e[address(stor15[idx])].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(stor15[idx])].field_256:
                                        revert with 0, 17
                                    if not sub_aec4ffd5:
                                        revert with 0, 18
                                    if sub_81925bb8 and sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / sub_81925bb8:
                                        revert with 0, 17
                                    if not sub_5fc5e020:
                                        revert with 0, 18
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020 <= sub_81925bb8:
                                        if not sub_9d9c453e[address(stor15[idx])].field_768:
                                            if sub_9d9c453e[address(stor15[idx])].field_512 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                revert with 0, 17
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            mem[0] = address(sub_e5a85bf1[idx])
                                            mem[32] = 14
                                            sub_9d9c453e[address(stor15[idx])].field_512 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                        else:
                                            if sub_9d9c453e[address(stor15[idx])].field_256 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                revert with 0, 17
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            mem[0] = address(sub_e5a85bf1[idx])
                                            mem[32] = 14
                                            sub_9d9c453e[address(stor15[idx])].field_256 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                            if sub_aec4ffd5 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                revert with 0, 17
                                            sub_aec4ffd5 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                        if sub_81925bb8 < sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020:
                                            revert with 0, 17
                                        sub_81925bb8 -= sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                        continue 
                                    if not sub_9d9c453e[address(stor15[idx])].field_768:
                                        if sub_9d9c453e[address(stor15[idx])].field_512 > !sub_81925bb8:
                                            revert with 0, 17
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        mem[0] = address(sub_e5a85bf1[idx])
                                        mem[32] = 14
                                        sub_9d9c453e[address(stor15[idx])].field_512 += sub_81925bb8
                                    else:
                                        if sub_9d9c453e[address(stor15[idx])].field_256 > !sub_81925bb8:
                                            revert with 0, 17
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        mem[0] = address(sub_e5a85bf1[idx])
                                        mem[32] = 14
                                        sub_9d9c453e[address(stor15[idx])].field_256 += sub_81925bb8
                                        if sub_aec4ffd5 > !sub_81925bb8:
                                            revert with 0, 17
                                        sub_aec4ffd5 += sub_81925bb8
                                    if sub_81925bb8 < sub_81925bb8:
                                        revert with 0, 17
                                    sub_81925bb8 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = sub_81925bb8
                                    continue 
                                stor11 = block.timestamp
                                require ext_code.size(stor3)
                                staticcall stor3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg1 != sub_9d9c453e[msg.sender].field_256:
                                    require ext_code.size(stor3)
                                    if arg1 <= ext_call.return_data[0]:
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, '[lep][staking] token transfer failed!'
                                        if sub_9d9c453e[msg.sender].field_256 < arg1:
                                            revert with 0, 17
                                        sub_9d9c453e[msg.sender].field_256 -= arg1
                                        if sub_aec4ffd5 < arg1:
                                            revert with 0, 17
                                        sub_aec4ffd5 -= arg1
                                        emit 0x3bf8e204: sub_f434ae7d, arg1, sub_9d9c453e[msg.sender].field_256, msg.sender
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
                                        if sub_9d9c453e[msg.sender].field_256 < ext_call.return_data[0]:
                                            revert with 0, 17
                                        sub_9d9c453e[msg.sender].field_256 -= ext_call.return_data[0]
                                        if sub_aec4ffd5 < ext_call.return_data[0]:
                                            revert with 0, 17
                                        sub_aec4ffd5 -= ext_call.return_data[0]
                                        emit 0x3bf8e204: sub_f434ae7d, ext_call.return_data[0], sub_9d9c453e[msg.sender].field_256, msg.sender
                                else:
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
                                        if sub_6805a07c < 1:
                                            revert with 0, 17
                                        sub_6805a07c--
                                        idx = 0
                                        while idx < sub_e5a85bf1.length:
                                            mem[0] = 15
                                            if address(sub_e5a85bf1[idx]) == msg.sender:
                                                if sub_e5a85bf1.length < 1:
                                                    revert with 0, 17
                                                if sub_e5a85bf1.length - 1 >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                address(sub_e5a85bf1[idx]) = address(sub_e5a85bf1[sub_e5a85bf1.length])
                                                if not sub_e5a85bf1.length:
                                                    revert with 0, 49
                                                mem[0] = 15
                                                address(sub_e5a85bf1[sub_e5a85bf1.length]) = 0
                                                sub_e5a85bf1.length--
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        if sub_aec4ffd5 < sub_9d9c453e[msg.sender].field_256:
                                            revert with 0, 17
                                        sub_aec4ffd5 -= sub_9d9c453e[msg.sender].field_256
                                        emit 0xd1d44d34: sub_f434ae7d, sub_9d9c453e[msg.sender].field_256 + sub_9d9c453e[msg.sender].field_512, sub_9d9c453e[msg.sender].field_0, msg.sender
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
                                        if sub_6805a07c < 1:
                                            revert with 0, 17
                                        sub_6805a07c--
                                        idx = 0
                                        while idx < sub_e5a85bf1.length:
                                            mem[0] = 15
                                            if address(sub_e5a85bf1[idx]) == msg.sender:
                                                if sub_e5a85bf1.length < 1:
                                                    revert with 0, 17
                                                if sub_e5a85bf1.length - 1 >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                address(sub_e5a85bf1[idx]) = address(sub_e5a85bf1[sub_e5a85bf1.length])
                                                if not sub_e5a85bf1.length:
                                                    revert with 0, 49
                                                mem[0] = 15
                                                address(sub_e5a85bf1[sub_e5a85bf1.length]) = 0
                                                sub_e5a85bf1.length--
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        if sub_aec4ffd5 < sub_9d9c453e[msg.sender].field_256:
                                            revert with 0, 17
                                        sub_aec4ffd5 -= sub_9d9c453e[msg.sender].field_256
                                        emit 0xd1d44d34: sub_f434ae7d, ext_call.return_data[0], sub_9d9c453e[msg.sender].field_0, msg.sender
                                    if sub_c688e671 < sub_e5a85bf1.length:
                                        revert with 0, 17
                                    emit 0xfef58ee6: (sub_c688e671 - sub_e5a85bf1.length)
                            stor11 = block.timestamp
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg1 != sub_9d9c453e[msg.sender].field_256:
                    require ext_code.size(stor3)
                    if arg1 <= ext_call.return_data[0]:
                        call stor3.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, '[lep][staking] token transfer failed!'
                        if sub_9d9c453e[msg.sender].field_256 < arg1:
                            revert with 0, 17
                        sub_9d9c453e[msg.sender].field_256 -= arg1
                        if sub_aec4ffd5 < arg1:
                            revert with 0, 17
                        sub_aec4ffd5 -= arg1
                        emit 0x3bf8e204: sub_f434ae7d, arg1, sub_9d9c453e[msg.sender].field_256, msg.sender
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
                        if sub_9d9c453e[msg.sender].field_256 < ext_call.return_data[0]:
                            revert with 0, 17
                        sub_9d9c453e[msg.sender].field_256 -= ext_call.return_data[0]
                        if sub_aec4ffd5 < ext_call.return_data[0]:
                            revert with 0, 17
                        sub_aec4ffd5 -= ext_call.return_data[0]
                        emit 0x3bf8e204: sub_f434ae7d, ext_call.return_data[0], sub_9d9c453e[msg.sender].field_256, msg.sender
                else:
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
                        if sub_6805a07c < 1:
                            revert with 0, 17
                        sub_6805a07c--
                        idx = 0
                        while idx < sub_e5a85bf1.length:
                            mem[0] = 15
                            if address(sub_e5a85bf1[idx]) == msg.sender:
                                if sub_e5a85bf1.length < 1:
                                    revert with 0, 17
                                if sub_e5a85bf1.length - 1 >= sub_e5a85bf1.length:
                                    revert with 0, 50
                                if idx >= sub_e5a85bf1.length:
                                    revert with 0, 50
                                address(sub_e5a85bf1[idx]) = address(sub_e5a85bf1[sub_e5a85bf1.length])
                                if not sub_e5a85bf1.length:
                                    revert with 0, 49
                                mem[0] = 15
                                address(sub_e5a85bf1[sub_e5a85bf1.length]) = 0
                                sub_e5a85bf1.length--
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if sub_aec4ffd5 < sub_9d9c453e[msg.sender].field_256:
                            revert with 0, 17
                        sub_aec4ffd5 -= sub_9d9c453e[msg.sender].field_256
                        emit 0xd1d44d34: sub_f434ae7d, sub_9d9c453e[msg.sender].field_256 + sub_9d9c453e[msg.sender].field_512, sub_9d9c453e[msg.sender].field_0, msg.sender
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
                        if sub_6805a07c < 1:
                            revert with 0, 17
                        sub_6805a07c--
                        idx = 0
                        while idx < sub_e5a85bf1.length:
                            mem[0] = 15
                            if address(sub_e5a85bf1[idx]) == msg.sender:
                                if sub_e5a85bf1.length < 1:
                                    revert with 0, 17
                                if sub_e5a85bf1.length - 1 >= sub_e5a85bf1.length:
                                    revert with 0, 50
                                if idx >= sub_e5a85bf1.length:
                                    revert with 0, 50
                                address(sub_e5a85bf1[idx]) = address(sub_e5a85bf1[sub_e5a85bf1.length])
                                if not sub_e5a85bf1.length:
                                    revert with 0, 49
                                mem[0] = 15
                                address(sub_e5a85bf1[sub_e5a85bf1.length]) = 0
                                sub_e5a85bf1.length--
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if sub_aec4ffd5 < sub_9d9c453e[msg.sender].field_256:
                            revert with 0, 17
                        sub_aec4ffd5 -= sub_9d9c453e[msg.sender].field_256
                        emit 0xd1d44d34: sub_f434ae7d, ext_call.return_data[0], sub_9d9c453e[msg.sender].field_0, msg.sender
                    if sub_c688e671 < sub_e5a85bf1.length:
                        revert with 0, 17
                    emit 0xfef58ee6: (sub_c688e671 - sub_e5a85bf1.length)
        else:
            if unknown_0xd617927e(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xe5a85bf1(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0xd617927e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_d617927e
                    if unknown_0xd80528ae(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_81925bb8, sub_e5a85bf1.length, sub_c688e671, sub_81925bb8, sub_d617927e, stor11
                    require unknown_0xe1c7392a(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, '[lep][ownable] caller is not the owner'
                else:
                    if unknown_0xe5a85bf1(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 < sub_e5a85bf1.length
                        return address(sub_e5a85bf1[arg1])
                    if uint32(call.func_hash) >> 224 != unknown_0xe9fad8ee(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                            require unknown_0xf434ae7d(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return sub_f434ae7d
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
                        require not msg.value
                        if not sub_9d9c453e[msg.sender].field_256:
                            revert with 0, '[lep][staking] you did not stake any tokens!'
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_81925bb8 > ext_call.return_data[0]:
                            sub_81925bb8 = ext_call.return_data[0]
                        if sub_81925bb8 > 0:
                            if sub_aec4ffd5 > 0:
                                if sub_e5a85bf1.length:
                                    idx = 0
                                    s = 0
                                    while idx < sub_e5a85bf1.length:
                                        if sub_81925bb8:
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if sub_9d9c453e[address(stor15[idx])].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(stor15[idx])].field_256:
                                                revert with 0, 17
                                            if not sub_aec4ffd5:
                                                revert with 0, 18
                                            if sub_81925bb8 and sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / sub_81925bb8:
                                                revert with 0, 17
                                            if not sub_5fc5e020:
                                                revert with 0, 18
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020 <= sub_81925bb8:
                                                if not sub_9d9c453e[address(stor15[idx])].field_768:
                                                    if sub_9d9c453e[address(stor15[idx])].field_512 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                        revert with 0, 17
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    mem[0] = address(sub_e5a85bf1[idx])
                                                    mem[32] = 14
                                                    sub_9d9c453e[address(stor15[idx])].field_512 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                else:
                                                    if sub_9d9c453e[address(stor15[idx])].field_256 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                        revert with 0, 17
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    mem[0] = address(sub_e5a85bf1[idx])
                                                    mem[32] = 14
                                                    sub_9d9c453e[address(stor15[idx])].field_256 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                    if sub_aec4ffd5 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                        revert with 0, 17
                                                    sub_aec4ffd5 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                if sub_81925bb8 < sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020:
                                                    revert with 0, 17
                                                sub_81925bb8 -= sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                if idx == -1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                s = sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                continue 
                                            if not sub_9d9c453e[address(stor15[idx])].field_768:
                                                if sub_9d9c453e[address(stor15[idx])].field_512 > !sub_81925bb8:
                                                    revert with 0, 17
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                mem[0] = address(sub_e5a85bf1[idx])
                                                mem[32] = 14
                                                sub_9d9c453e[address(stor15[idx])].field_512 += sub_81925bb8
                                            else:
                                                if sub_9d9c453e[address(stor15[idx])].field_256 > !sub_81925bb8:
                                                    revert with 0, 17
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                mem[0] = address(sub_e5a85bf1[idx])
                                                mem[32] = 14
                                                sub_9d9c453e[address(stor15[idx])].field_256 += sub_81925bb8
                                                if sub_aec4ffd5 > !sub_81925bb8:
                                                    revert with 0, 17
                                                sub_aec4ffd5 += sub_81925bb8
                                            if sub_81925bb8 < sub_81925bb8:
                                                revert with 0, 17
                                            sub_81925bb8 = 0
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            s = sub_81925bb8
                                            continue 
                                        stor11 = block.timestamp
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
                                            if sub_6805a07c < 1:
                                                revert with 0, 17
                                            sub_6805a07c--
                                            idx = 0
                                            while idx < sub_e5a85bf1.length:
                                                mem[0] = 15
                                                if address(sub_e5a85bf1[idx]) == msg.sender:
                                                    if sub_e5a85bf1.length < 1:
                                                        revert with 0, 17
                                                    if sub_e5a85bf1.length - 1 >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    address(sub_e5a85bf1[idx]) = address(sub_e5a85bf1[sub_e5a85bf1.length])
                                                    if not sub_e5a85bf1.length:
                                                        revert with 0, 49
                                                    mem[0] = 15
                                                    address(sub_e5a85bf1[sub_e5a85bf1.length]) = 0
                                                    sub_e5a85bf1.length--
                                                if idx == -1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                continue 
                                            if sub_aec4ffd5 < sub_9d9c453e[msg.sender].field_256:
                                                revert with 0, 17
                                            sub_aec4ffd5 -= sub_9d9c453e[msg.sender].field_256
                                            emit 0xd1d44d34: sub_f434ae7d, sub_9d9c453e[msg.sender].field_256 + sub_9d9c453e[msg.sender].field_512, sub_9d9c453e[msg.sender].field_0, msg.sender
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
                                            if sub_6805a07c < 1:
                                                revert with 0, 17
                                            sub_6805a07c--
                                            idx = 0
                                            while idx < sub_e5a85bf1.length:
                                                mem[0] = 15
                                                if address(sub_e5a85bf1[idx]) == msg.sender:
                                                    if sub_e5a85bf1.length < 1:
                                                        revert with 0, 17
                                                    if sub_e5a85bf1.length - 1 >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    address(sub_e5a85bf1[idx]) = address(sub_e5a85bf1[sub_e5a85bf1.length])
                                                    if not sub_e5a85bf1.length:
                                                        revert with 0, 49
                                                    mem[0] = 15
                                                    address(sub_e5a85bf1[sub_e5a85bf1.length]) = 0
                                                    sub_e5a85bf1.length--
                                                if idx == -1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                continue 
                                            if sub_aec4ffd5 < sub_9d9c453e[msg.sender].field_256:
                                                revert with 0, 17
                                            sub_aec4ffd5 -= sub_9d9c453e[msg.sender].field_256
                                            emit 0xd1d44d34: sub_f434ae7d, ext_call.return_data[0], sub_9d9c453e[msg.sender].field_0, msg.sender
                                        if sub_c688e671 < sub_e5a85bf1.length:
                                            revert with 0, 17
                                        emit 0xfef58ee6: (sub_c688e671 - sub_e5a85bf1.length)
                                    stor11 = block.timestamp
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
                            if sub_6805a07c < 1:
                                revert with 0, 17
                            sub_6805a07c--
                            idx = 0
                            while idx < sub_e5a85bf1.length:
                                mem[0] = 15
                                if address(sub_e5a85bf1[idx]) == msg.sender:
                                    if sub_e5a85bf1.length < 1:
                                        revert with 0, 17
                                    if sub_e5a85bf1.length - 1 >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    address(sub_e5a85bf1[idx]) = address(sub_e5a85bf1[sub_e5a85bf1.length])
                                    if not sub_e5a85bf1.length:
                                        revert with 0, 49
                                    mem[0] = 15
                                    address(sub_e5a85bf1[sub_e5a85bf1.length]) = 0
                                    sub_e5a85bf1.length--
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if sub_aec4ffd5 < sub_9d9c453e[msg.sender].field_256:
                                revert with 0, 17
                            sub_aec4ffd5 -= sub_9d9c453e[msg.sender].field_256
                            emit 0xd1d44d34: sub_f434ae7d, sub_9d9c453e[msg.sender].field_256 + sub_9d9c453e[msg.sender].field_512, sub_9d9c453e[msg.sender].field_0, msg.sender
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
                            if sub_6805a07c < 1:
                                revert with 0, 17
                            sub_6805a07c--
                            idx = 0
                            while idx < sub_e5a85bf1.length:
                                mem[0] = 15
                                if address(sub_e5a85bf1[idx]) == msg.sender:
                                    if sub_e5a85bf1.length < 1:
                                        revert with 0, 17
                                    if sub_e5a85bf1.length - 1 >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    address(sub_e5a85bf1[idx]) = address(sub_e5a85bf1[sub_e5a85bf1.length])
                                    if not sub_e5a85bf1.length:
                                        revert with 0, 49
                                    mem[0] = 15
                                    address(sub_e5a85bf1[sub_e5a85bf1.length]) = 0
                                    sub_e5a85bf1.length--
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if sub_aec4ffd5 < sub_9d9c453e[msg.sender].field_256:
                                revert with 0, 17
                            sub_aec4ffd5 -= sub_9d9c453e[msg.sender].field_256
                            emit 0xd1d44d34: sub_f434ae7d, ext_call.return_data[0], sub_9d9c453e[msg.sender].field_0, msg.sender
                        if sub_c688e671 < sub_e5a85bf1.length:
                            revert with 0, 17
                        emit 0xfef58ee6: (sub_c688e671 - sub_e5a85bf1.length)
            else:
                if unknown_0xc383f77b(?????) > uint32(call.func_hash) >> 224:
                    if uint32(call.func_hash) >> 224 != unknown_0xa2e62045(?????):
                        if unknown_0xaec4ffd5(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return sub_aec4ffd5
                        require unknown_0xb9cfe2a8(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return sub_b9cfe2a8Address
                    require not msg.value
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_81925bb8 > ext_call.return_data[0]:
                        sub_81925bb8 = ext_call.return_data[0]
                    if sub_81925bb8 > 0:
                        if sub_aec4ffd5 > 0:
                            if sub_e5a85bf1.length:
                                idx = 0
                                s = 0
                                while idx < sub_e5a85bf1.length:
                                    if not sub_81925bb8:
                                        stor11 = block.timestamp
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if sub_9d9c453e[address(stor15[idx])].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(stor15[idx])].field_256:
                                        revert with 0, 17
                                    if not sub_aec4ffd5:
                                        revert with 0, 18
                                    if sub_81925bb8 and sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / sub_81925bb8:
                                        revert with 0, 17
                                    if not sub_5fc5e020:
                                        revert with 0, 18
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020 <= sub_81925bb8:
                                        if not sub_9d9c453e[address(stor15[idx])].field_768:
                                            if sub_9d9c453e[address(stor15[idx])].field_512 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                revert with 0, 17
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            mem[0] = address(sub_e5a85bf1[idx])
                                            mem[32] = 14
                                            sub_9d9c453e[address(stor15[idx])].field_512 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                        else:
                                            if sub_9d9c453e[address(stor15[idx])].field_256 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                revert with 0, 17
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            mem[0] = address(sub_e5a85bf1[idx])
                                            mem[32] = 14
                                            sub_9d9c453e[address(stor15[idx])].field_256 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                            if sub_aec4ffd5 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                revert with 0, 17
                                            sub_aec4ffd5 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                        if sub_81925bb8 < sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020:
                                            revert with 0, 17
                                        sub_81925bb8 -= sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                        continue 
                                    if not sub_9d9c453e[address(stor15[idx])].field_768:
                                        if sub_9d9c453e[address(stor15[idx])].field_512 > !sub_81925bb8:
                                            revert with 0, 17
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        mem[0] = address(sub_e5a85bf1[idx])
                                        mem[32] = 14
                                        sub_9d9c453e[address(stor15[idx])].field_512 += sub_81925bb8
                                    else:
                                        if sub_9d9c453e[address(stor15[idx])].field_256 > !sub_81925bb8:
                                            revert with 0, 17
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        mem[0] = address(sub_e5a85bf1[idx])
                                        mem[32] = 14
                                        sub_9d9c453e[address(stor15[idx])].field_256 += sub_81925bb8
                                        if sub_aec4ffd5 > !sub_81925bb8:
                                            revert with 0, 17
                                        sub_aec4ffd5 += sub_81925bb8
                                    if sub_81925bb8 < sub_81925bb8:
                                        revert with 0, 17
                                    sub_81925bb8 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = sub_81925bb8
                                    continue 
                                stor11 = block.timestamp
                else:
                    if unknown_0xc383f77b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_c383f77b
                    if uint32(call.func_hash) >> 224 != unknown_0xc648e633(?????):
                        if unknown_0xc688e671(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return sub_c688e671
                        require unknown_0xd5389126(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        if block.timestamp < stor11:
                            revert with 0, 17
                        if block.timestamp - stor11 < stor9:
                            return 0
                        return 1
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require arg2 == bool(arg2)
                    require arg3 == bool(arg3)
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
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_81925bb8 > ext_call.return_data[0]:
                            sub_81925bb8 = ext_call.return_data[0]
                        if sub_81925bb8 > 0:
                            if sub_aec4ffd5 > 0:
                                if sub_e5a85bf1.length:
                                    idx = 0
                                    s = 0
                                    while idx < sub_e5a85bf1.length:
                                        if sub_81925bb8:
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if sub_9d9c453e[address(stor15[idx])].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(stor15[idx])].field_256:
                                                revert with 0, 17
                                            if not sub_aec4ffd5:
                                                revert with 0, 18
                                            if sub_81925bb8 and sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / sub_81925bb8:
                                                revert with 0, 17
                                            if not sub_5fc5e020:
                                                revert with 0, 18
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020 <= sub_81925bb8:
                                                if not sub_9d9c453e[address(stor15[idx])].field_768:
                                                    if sub_9d9c453e[address(stor15[idx])].field_512 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                        revert with 0, 17
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    mem[0] = address(sub_e5a85bf1[idx])
                                                    mem[32] = 14
                                                    sub_9d9c453e[address(stor15[idx])].field_512 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                else:
                                                    if sub_9d9c453e[address(stor15[idx])].field_256 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                        revert with 0, 17
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    mem[0] = address(sub_e5a85bf1[idx])
                                                    mem[32] = 14
                                                    sub_9d9c453e[address(stor15[idx])].field_256 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                    if sub_aec4ffd5 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                        revert with 0, 17
                                                    sub_aec4ffd5 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                if sub_81925bb8 < sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020:
                                                    revert with 0, 17
                                                sub_81925bb8 -= sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                if idx == -1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                s = sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                continue 
                                            if not sub_9d9c453e[address(stor15[idx])].field_768:
                                                if sub_9d9c453e[address(stor15[idx])].field_512 > !sub_81925bb8:
                                                    revert with 0, 17
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                mem[0] = address(sub_e5a85bf1[idx])
                                                mem[32] = 14
                                                sub_9d9c453e[address(stor15[idx])].field_512 += sub_81925bb8
                                            else:
                                                if sub_9d9c453e[address(stor15[idx])].field_256 > !sub_81925bb8:
                                                    revert with 0, 17
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                mem[0] = address(sub_e5a85bf1[idx])
                                                mem[32] = 14
                                                sub_9d9c453e[address(stor15[idx])].field_256 += sub_81925bb8
                                                if sub_aec4ffd5 > !sub_81925bb8:
                                                    revert with 0, 17
                                                sub_aec4ffd5 += sub_81925bb8
                                            if sub_81925bb8 < sub_81925bb8:
                                                revert with 0, 17
                                            sub_81925bb8 = 0
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            s = sub_81925bb8
                                            continue 
                                        stor11 = block.timestamp
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
                                            if arg1 and sub_5fc5e020 > -1 / arg1:
                                                revert with 0, 17
                                            if not sub_aec4ffd5:
                                                revert with 0, 18
                                            emit 0xa5cc51a9: sub_f434ae7d, arg1, arg1, arg1 * sub_5fc5e020 / sub_aec4ffd5, sub_5fc5e020, 0, msg.sender
                                        if sub_c688e671 < sub_e5a85bf1.length:
                                            revert with 0, 17
                                        emit 0xfef58ee6: (sub_c688e671 - sub_e5a85bf1.length)
                                    stor11 = block.timestamp
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
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_81925bb8 > ext_call.return_data[0]:
                            sub_81925bb8 = ext_call.return_data[0]
                        if sub_81925bb8 > 0:
                            if sub_aec4ffd5 > 0:
                                if sub_e5a85bf1.length:
                                    idx = 0
                                    s = 0
                                    while idx < sub_e5a85bf1.length:
                                        if sub_81925bb8:
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if sub_9d9c453e[address(stor15[idx])].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(stor15[idx])].field_256:
                                                revert with 0, 17
                                            if not sub_aec4ffd5:
                                                revert with 0, 18
                                            if sub_81925bb8 and sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / sub_81925bb8:
                                                revert with 0, 17
                                            if not sub_5fc5e020:
                                                revert with 0, 18
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020 <= sub_81925bb8:
                                                if not sub_9d9c453e[address(stor15[idx])].field_768:
                                                    if sub_9d9c453e[address(stor15[idx])].field_512 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                        revert with 0, 17
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    mem[0] = address(sub_e5a85bf1[idx])
                                                    mem[32] = 14
                                                    sub_9d9c453e[address(stor15[idx])].field_512 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                else:
                                                    if sub_9d9c453e[address(stor15[idx])].field_256 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                        revert with 0, 17
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    mem[0] = address(sub_e5a85bf1[idx])
                                                    mem[32] = 14
                                                    sub_9d9c453e[address(stor15[idx])].field_256 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                    if sub_aec4ffd5 > !(sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                        revert with 0, 17
                                                    sub_aec4ffd5 += sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                if sub_81925bb8 < sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020:
                                                    revert with 0, 17
                                                sub_81925bb8 -= sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                if idx == -1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                s = sub_81925bb8 * sub_9d9c453e[address(stor15[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                continue 
                                            if not sub_9d9c453e[address(stor15[idx])].field_768:
                                                if sub_9d9c453e[address(stor15[idx])].field_512 > !sub_81925bb8:
                                                    revert with 0, 17
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                mem[0] = address(sub_e5a85bf1[idx])
                                                mem[32] = 14
                                                sub_9d9c453e[address(stor15[idx])].field_512 += sub_81925bb8
                                            else:
                                                if sub_9d9c453e[address(stor15[idx])].field_256 > !sub_81925bb8:
                                                    revert with 0, 17
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                mem[0] = address(sub_e5a85bf1[idx])
                                                mem[32] = 14
                                                sub_9d9c453e[address(stor15[idx])].field_256 += sub_81925bb8
                                                if sub_aec4ffd5 > !sub_81925bb8:
                                                    revert with 0, 17
                                                sub_aec4ffd5 += sub_81925bb8
                                            if sub_81925bb8 < sub_81925bb8:
                                                revert with 0, 17
                                            sub_81925bb8 = 0
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            s = sub_81925bb8
                                            continue 
                                        stor11 = block.timestamp
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
                                            if ext_call.return_data[0] and sub_5fc5e020 > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if not sub_aec4ffd5:
                                                revert with 0, 18
                                            emit 0xa5cc51a9: sub_f434ae7d, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] * sub_5fc5e020 / sub_aec4ffd5, sub_5fc5e020, 0, msg.sender
                                        if sub_c688e671 < sub_e5a85bf1.length:
                                            revert with 0, 17
                                        emit 0xfef58ee6: (sub_c688e671 - sub_e5a85bf1.length)
                                    stor11 = block.timestamp
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
                            if ext_call.return_data[0] and sub_5fc5e020 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if not sub_aec4ffd5:
                                revert with 0, 18
                            emit 0xa5cc51a9: sub_f434ae7d, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] * sub_5fc5e020 / sub_aec4ffd5, sub_5fc5e020, 0, msg.sender
                    if sub_c688e671 < sub_e5a85bf1.length:
                        revert with 0, 17
                    emit 0xfef58ee6: (sub_c688e671 - sub_e5a85bf1.length)
}



}
