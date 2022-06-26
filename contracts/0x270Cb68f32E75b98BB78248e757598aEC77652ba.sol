contract main {




// =====================  Runtime code  =====================


address owner;
address sub_48af48a5Address;
address sub_b9cfe2a8Address;
address sub_cd877b5eAddress;
address stor4;
uint256 sub_5fc5e020;
mapping of struct sub_33acefb6;
array of address sub_2bb57ef1;
uint256 sub_ec4875a0;
uint256 sub_9e5a2cfd;
uint256 sub_eddf0c19;
uint256 sub_0787d6d2;
uint256 sub_bcdaba23;

function sub_0787d6d2(?) {
    return sub_0787d6d2
}

function sub_2bb57ef1(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_2bb57ef1.length
    return sub_2bb57ef1[arg1]
}

function sub_33acefb6(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not sub_33acefb6[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[lep][presale-vault] wallet has no locked tokens!'
    if arg2 < sub_33acefb6[address(arg1)].field_512:
        revert with 0, 17
    if arg2 - sub_33acefb6[address(arg1)].field_512 and sub_33acefb6[address(arg1)].field_256 > -1 / arg2 - sub_33acefb6[address(arg1)].field_512:
        revert with 0, 17
    return sub_33acefb6[address(arg1)].field_0, 
           sub_33acefb6[address(arg1)].field_256,
           (arg2 * sub_33acefb6[address(arg1)].field_256) - (sub_33acefb6[address(arg1)].field_512 * sub_33acefb6[address(arg1)].field_256)
}

function sub_48af48a5(?) {
    return sub_48af48a5Address
}

function sub_5fc5e020(?) {
    return sub_5fc5e020
}

function sub_8a94735b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_33acefb6[arg1].field_0, sub_33acefb6[arg1].field_256, sub_33acefb6[arg1].field_512
}

function owner() {
    return owner
}

function sub_9e5a2cfd(?) {
    return sub_9e5a2cfd
}

function sub_b9cfe2a8(?) {
    return sub_b9cfe2a8Address
}

function sub_bcdaba23(?) {
    return sub_bcdaba23
}

function sub_cd877b5e(?) {
    return sub_cd877b5eAddress
}

function sub_ec4875a0(?) {
    return sub_ec4875a0
}

function sub_eddf0c19(?) {
    return sub_eddf0c19
}

function kill() {
    if block.timestamp <= sub_bcdaba23:
    emit 0x7ff2f60a: block.timestamp, msg.sender
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(stor4)
        call stor4.0xa9059cbb with:
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
        if unknown_0x715018a6(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xbcdaba23(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, '[lep][ownable] caller is not the owner'
                    owner = 0
                    emit OwnershipTransferred(owner, 0);
                if unknown_0x8a94735b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return sub_33acefb6[arg1].field_0, sub_33acefb6[arg1].field_256, sub_33acefb6[arg1].field_512
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if unknown_0x9e5a2cfd(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_9e5a2cfd
                require unknown_0xb9cfe2a8(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return sub_b9cfe2a8Address
            if unknown_0xbcdaba23(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_bcdaba23
            if unknown_0xcd877b5e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_cd877b5eAddress
            if unknown_0xd80528ae(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_ec4875a0, sub_2bb57ef1.length, sub_eddf0c19, sub_bcdaba23
            if unknown_0xec4875a0(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_ec4875a0
            if unknown_0xeddf0c19(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_eddf0c19
            require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
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
            if unknown_0x41c0e1b5(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x41c0e1b5(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if block.timestamp <= sub_bcdaba23:
                    emit 0x7ff2f60a: block.timestamp, msg.sender
                    require ext_code.size(stor4)
                    staticcall stor4.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(stor4)
                        call stor4.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_48af48a5Address, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    selfdestruct(sub_48af48a5Address)
                if uint32(call.func_hash) >> 224 != unknown_0x47e7ef24(?????):
                    if unknown_0x48af48a5(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_48af48a5Address
                    if uint32(call.func_hash) >> 224 != unknown_0x5702eb13(?????):
                        if unknown_0x5fc5e020(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return sub_5fc5e020
                        require unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if not sub_33acefb6[address(arg1)].field_0:
                            return 0
                        return sub_33acefb6[address(arg1)].field_0
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    if arg2 < sub_9e5a2cfd:
                        revert with 0, '[lep][presale-vault] withdraw has not started yet!'
                    if not sub_33acefb6[address(arg1)].field_0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    '[lep][presale-vault] this wallet does not have any locked tokens!'
                    if arg2 >= sub_eddf0c19:
                        return sub_33acefb6[address(arg1)].field_0
                    if arg2 < sub_33acefb6[address(arg1)].field_512:
                        revert with 0, 17
                    if arg2 - sub_33acefb6[address(arg1)].field_512 and sub_33acefb6[address(arg1)].field_256 > -1 / arg2 - sub_33acefb6[address(arg1)].field_512:
                        revert with 0, 17
                    return ((arg2 * sub_33acefb6[address(arg1)].field_256) - (sub_33acefb6[address(arg1)].field_512 * sub_33acefb6[address(arg1)].field_256))
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, '[lep][ownable] caller is not the owner'
                if sub_cd877b5eAddress:
                    if sub_33acefb6[address(arg1)].field_0:
                        if sub_33acefb6[address(arg1)].field_0 > !arg2:
                            revert with 0, 17
                        sub_33acefb6[address(arg1)].field_0 += arg2
                        if sub_33acefb6[address(arg1)].field_0 + arg2 and sub_5fc5e020 > -1 / sub_33acefb6[address(arg1)].field_0 + arg2:
                            revert with 0, 17
                        if not sub_0787d6d2:
                            revert with 0, 18
                        if not sub_5fc5e020:
                            revert with 0, 18
                        sub_33acefb6[address(arg1)].field_256 = (sub_33acefb6[address(arg1)].field_0 * sub_5fc5e020) + (arg2 * sub_5fc5e020) / sub_0787d6d2 / sub_5fc5e020
                    else:
                        sub_33acefb6[address(arg1)].field_0 = arg2
                        sub_33acefb6[address(arg1)].field_512 = sub_9e5a2cfd
                        if arg2 and sub_5fc5e020 > -1 / arg2:
                            revert with 0, 17
                        if not sub_0787d6d2:
                            revert with 0, 18
                        if not sub_5fc5e020:
                            revert with 0, 18
                        sub_33acefb6[address(arg1)].field_256 = arg2 * sub_5fc5e020 / sub_0787d6d2 / sub_5fc5e020
                        sub_2bb57ef1.length++
                        sub_2bb57ef1[sub_2bb57ef1.length] = address(arg1)
                    if sub_ec4875a0 > !arg2:
                        revert with 0, 17
                    sub_ec4875a0 += arg2
                    emit TokenDeposit(arg2, address(arg1));
            else:
                if unknown_0x0787d6d2(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_0787d6d2
                if unknown_0x19ab453c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, '[lep][ownable] caller is not the owner'
                    sub_cd877b5eAddress = address(arg1)
                    if not address(arg1):
                        revert with 0, '[lep][ownable] new owner is the zero address'
                    owner = address(arg1)
                    emit OwnershipTransferred(owner, address(arg1));
                else:
                    if unknown_0x2bb57ef1(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 < sub_2bb57ef1.length
                        return sub_2bb57ef1[arg1]
                    if unknown_0x33acefb6(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        if not sub_33acefb6[address(arg1)].field_0:
                            revert with 0, '[lep][presale-vault] wallet has no locked tokens!'
                        if arg2 < sub_33acefb6[address(arg1)].field_512:
                            revert with 0, 17
                        if arg2 - sub_33acefb6[address(arg1)].field_512 and sub_33acefb6[address(arg1)].field_256 > -1 / arg2 - sub_33acefb6[address(arg1)].field_512:
                            revert with 0, 17
                        return sub_33acefb6[address(arg1)].field_0, 
                               sub_33acefb6[address(arg1)].field_256,
                               (arg2 * sub_33acefb6[address(arg1)].field_256) - (sub_33acefb6[address(arg1)].field_512 * sub_33acefb6[address(arg1)].field_256)
                    require unknown_0x3ccfd60b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    if block.timestamp < sub_9e5a2cfd:
                        revert with 0, '[lep][presale-vault] withdraw has not started yet!'
                    if not sub_33acefb6[msg.sender].field_0:
                        revert with 0, '[lep][presale-vault] you do not have any locked tokens!'
                    if block.timestamp >= sub_eddf0c19:
                        require ext_code.size(stor4)
                        call stor4.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, sub_33acefb6[address(msg.sender)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, '[lep][presale-vault] token transfer failed!'
                        if sub_ec4875a0 < sub_33acefb6[msg.sender].field_0:
                            revert with 0, 17
                        sub_ec4875a0 -= sub_33acefb6[msg.sender].field_0
                        emit TokenWithdraw(sub_33acefb6[msg.sender].field_0, 0, msg.sender);
                        sub_33acefb6[msg.sender].field_0 = 0
                    else:
                        if block.timestamp < sub_33acefb6[address(msg.sender)].field_512:
                            revert with 0, 17
                        if block.timestamp - sub_33acefb6[address(msg.sender)].field_512 and sub_33acefb6[address(msg.sender)].field_256 > -1 / block.timestamp - sub_33acefb6[address(msg.sender)].field_512:
                            revert with 0, 17
                        require ext_code.size(stor4)
                        if (block.timestamp * sub_33acefb6[address(msg.sender)].field_256) - (sub_33acefb6[address(msg.sender)].field_512 * sub_33acefb6[address(msg.sender)].field_256) <= sub_33acefb6[msg.sender].field_0:
                            call stor4.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (block.timestamp * sub_33acefb6[address(msg.sender)].field_256) - (sub_33acefb6[address(msg.sender)].field_512 * sub_33acefb6[address(msg.sender)].field_256)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, '[lep][presale-vault] token transfer failed!'
                            if sub_33acefb6[msg.sender].field_0 < (block.timestamp * sub_33acefb6[address(msg.sender)].field_256) - (sub_33acefb6[address(msg.sender)].field_512 * sub_33acefb6[address(msg.sender)].field_256):
                                revert with 0, 17
                            sub_33acefb6[msg.sender].field_0 = sub_33acefb6[msg.sender].field_0 - (block.timestamp * sub_33acefb6[address(msg.sender)].field_256) + (sub_33acefb6[address(msg.sender)].field_512 * sub_33acefb6[address(msg.sender)].field_256)
                            if sub_ec4875a0 < (block.timestamp * sub_33acefb6[address(msg.sender)].field_256) - (sub_33acefb6[address(msg.sender)].field_512 * sub_33acefb6[address(msg.sender)].field_256):
                                revert with 0, 17
                            sub_ec4875a0 = sub_ec4875a0 - (block.timestamp * sub_33acefb6[address(msg.sender)].field_256) + (sub_33acefb6[address(msg.sender)].field_512 * sub_33acefb6[address(msg.sender)].field_256)
                            sub_33acefb6[msg.sender].field_512 = block.timestamp
                            emit TokenWithdraw((block.timestamp * sub_33acefb6[address(msg.sender)].field_256) - (sub_33acefb6[address(msg.sender)].field_512 * sub_33acefb6[address(msg.sender)].field_256), sub_33acefb6[msg.sender].field_0, msg.sender);
                        else:
                            call stor4.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, sub_33acefb6[msg.sender].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, '[lep][presale-vault] token transfer failed!'
                            if sub_33acefb6[msg.sender].field_0 < sub_33acefb6[msg.sender].field_0:
                                revert with 0, 17
                            sub_33acefb6[msg.sender].field_0 = 0
                            if sub_ec4875a0 < sub_33acefb6[msg.sender].field_0:
                                revert with 0, 17
                            sub_ec4875a0 -= sub_33acefb6[msg.sender].field_0
                            sub_33acefb6[msg.sender].field_512 = block.timestamp
                            emit TokenWithdraw(sub_33acefb6[msg.sender].field_0, sub_33acefb6[msg.sender].field_0, msg.sender);
}

function stats() {
    return sub_ec4875a0, sub_2bb57ef1.length, sub_eddf0c19, sub_bcdaba23
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_33acefb6[address(arg1)].field_0:
        return 0
    return sub_33acefb6[address(arg1)].field_0
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

function init(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[lep][ownable] caller is not the owner'
    sub_cd877b5eAddress = arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[lep][ownable] new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_5702eb13(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if arg2 < sub_9e5a2cfd:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[lep][presale-vault] withdraw has not started yet!'
    if not sub_33acefb6[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '[lep][presale-vault] this wallet does not have any locked tokens!'
    if arg2 >= sub_eddf0c19:
        return sub_33acefb6[address(arg1)].field_0
    if arg2 < sub_33acefb6[address(arg1)].field_512:
        revert with 0, 17
    if arg2 - sub_33acefb6[address(arg1)].field_512 and sub_33acefb6[address(arg1)].field_256 > -1 / arg2 - sub_33acefb6[address(arg1)].field_512:
        revert with 0, 17
    return ((arg2 * sub_33acefb6[address(arg1)].field_256) - (sub_33acefb6[address(arg1)].field_512 * sub_33acefb6[address(arg1)].field_256))
}

function deposit(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[lep][ownable] caller is not the owner'
    if sub_cd877b5eAddress:
        if sub_33acefb6[address(arg1)].field_0:
            if sub_33acefb6[address(arg1)].field_0 > !arg2:
                revert with 0, 17
            sub_33acefb6[address(arg1)].field_0 += arg2
            if sub_33acefb6[address(arg1)].field_0 + arg2 and sub_5fc5e020 > -1 / sub_33acefb6[address(arg1)].field_0 + arg2:
                revert with 0, 17
            if not sub_0787d6d2:
                revert with 0, 18
            if not sub_5fc5e020:
                revert with 0, 18
            sub_33acefb6[address(arg1)].field_256 = (sub_33acefb6[address(arg1)].field_0 * sub_5fc5e020) + (arg2 * sub_5fc5e020) / sub_0787d6d2 / sub_5fc5e020
        else:
            sub_33acefb6[address(arg1)].field_0 = arg2
            sub_33acefb6[address(arg1)].field_512 = sub_9e5a2cfd
            if arg2 and sub_5fc5e020 > -1 / arg2:
                revert with 0, 17
            if not sub_0787d6d2:
                revert with 0, 18
            if not sub_5fc5e020:
                revert with 0, 18
            sub_33acefb6[address(arg1)].field_256 = arg2 * sub_5fc5e020 / sub_0787d6d2 / sub_5fc5e020
            sub_2bb57ef1.length++
            sub_2bb57ef1[sub_2bb57ef1.length] = arg1
        if sub_ec4875a0 > !arg2:
            revert with 0, 17
        sub_ec4875a0 += arg2
        emit TokenDeposit(arg2, arg1);
}

function withdraw() {
    if block.timestamp < sub_9e5a2cfd:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[lep][presale-vault] withdraw has not started yet!'
    if not sub_33acefb6[msg.sender].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '[lep][presale-vault] you do not have any locked tokens!'
    if block.timestamp >= sub_eddf0c19:
        require ext_code.size(stor4)
        call stor4.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_33acefb6[address(msg.sender)].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, '[lep][presale-vault] token transfer failed!'
        if sub_ec4875a0 < sub_33acefb6[msg.sender].field_0:
            revert with 0, 17
        sub_ec4875a0 -= sub_33acefb6[msg.sender].field_0
        emit TokenWithdraw(sub_33acefb6[msg.sender].field_0, 0, msg.sender);
        sub_33acefb6[msg.sender].field_0 = 0
    else:
        if block.timestamp < sub_33acefb6[address(msg.sender)].field_512:
            revert with 0, 17
        if block.timestamp - sub_33acefb6[address(msg.sender)].field_512 and sub_33acefb6[address(msg.sender)].field_256 > -1 / block.timestamp - sub_33acefb6[address(msg.sender)].field_512:
            revert with 0, 17
        require ext_code.size(stor4)
        if (block.timestamp * sub_33acefb6[address(msg.sender)].field_256) - (sub_33acefb6[address(msg.sender)].field_512 * sub_33acefb6[address(msg.sender)].field_256) <= sub_33acefb6[msg.sender].field_0:
            call stor4.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (block.timestamp * sub_33acefb6[address(msg.sender)].field_256) - (sub_33acefb6[address(msg.sender)].field_512 * sub_33acefb6[address(msg.sender)].field_256)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, '[lep][presale-vault] token transfer failed!'
            if sub_33acefb6[msg.sender].field_0 < (block.timestamp * sub_33acefb6[address(msg.sender)].field_256) - (sub_33acefb6[address(msg.sender)].field_512 * sub_33acefb6[address(msg.sender)].field_256):
                revert with 0, 17
            sub_33acefb6[msg.sender].field_0 = sub_33acefb6[msg.sender].field_0 - (block.timestamp * sub_33acefb6[address(msg.sender)].field_256) + (sub_33acefb6[address(msg.sender)].field_512 * sub_33acefb6[address(msg.sender)].field_256)
            if sub_ec4875a0 < (block.timestamp * sub_33acefb6[address(msg.sender)].field_256) - (sub_33acefb6[address(msg.sender)].field_512 * sub_33acefb6[address(msg.sender)].field_256):
                revert with 0, 17
            sub_ec4875a0 = sub_ec4875a0 - (block.timestamp * sub_33acefb6[address(msg.sender)].field_256) + (sub_33acefb6[address(msg.sender)].field_512 * sub_33acefb6[address(msg.sender)].field_256)
            sub_33acefb6[msg.sender].field_512 = block.timestamp
            emit TokenWithdraw((block.timestamp * sub_33acefb6[address(msg.sender)].field_256) - (sub_33acefb6[address(msg.sender)].field_512 * sub_33acefb6[address(msg.sender)].field_256), sub_33acefb6[msg.sender].field_0, msg.sender);
        else:
            call stor4.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_33acefb6[msg.sender].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, '[lep][presale-vault] token transfer failed!'
            if sub_33acefb6[msg.sender].field_0 < sub_33acefb6[msg.sender].field_0:
                revert with 0, 17
            sub_33acefb6[msg.sender].field_0 = 0
            if sub_ec4875a0 < sub_33acefb6[msg.sender].field_0:
                revert with 0, 17
            sub_ec4875a0 -= sub_33acefb6[msg.sender].field_0
            sub_33acefb6[msg.sender].field_512 = block.timestamp
            emit TokenWithdraw(sub_33acefb6[msg.sender].field_0, sub_33acefb6[msg.sender].field_0, msg.sender);
}



}
