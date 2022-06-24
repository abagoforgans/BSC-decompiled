contract main {




// =====================  Runtime code  =====================


address owner;
address projectAddress;
uint256 sub_6c99e0da;
uint256 sub_b100962a;
uint256 sub_e055581c;
uint256 sub_bdd5b480;
mapping of struct users;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
address sub_6d41c384Address;
uint256 total_users;
uint256 total_deposited;
uint256 total_withdraw;

function projectAddress() {
    return projectAddress
}

function sub_6c99e0da(?) {
    return sub_6c99e0da
}

function sub_6d41c384(?) {
    return sub_6d41c384Address
}

function owner() {
    return owner
}

function total_withdraw() {
    return total_withdraw
}

function users(address arg1) {
    require calldata.size - 4 >= 32
    return users[arg1].field_0, 
           uint256(users[arg1].field_256),
           uint256(users[arg1].field_512),
           uint256(users[arg1].field_768),
           uint256(users[arg1].field_1024),
           uint256(users[arg1].field_1280),
           users[arg1].field_1536 % 1099511627776,
           uint256(users[arg1].field_1792),
           uint256(users[arg1].field_2048),
           uint256(users[arg1].field_2304),
           uint256(users[arg1].field_2560),
           uint8(users[arg1].field_2816),
           uint256(users[arg1].field_3072),
           bool(uint8(users[arg1].field_3328))
}

function sub_b100962a(?) {
    return sub_b100962a
}

function ref_bonuses(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor3.length
    return ref_bonuses[uint8(arg1)]
}

function sub_bdd5b480(?) {
    return sub_bdd5b480
}

function sub_c65739be(?) {
    require calldata.size - 4 >= 32
    require arg1 < stor4.length
    return sub_c65739be[uint8(arg1)]
}

function sub_ca33525b(?) {
    require calldata.size - 4 >= 32
    require arg1 < stor5.length
    return sub_ca33525b[uint8(arg1)]
}

function total_deposited() {
    return total_deposited
}

function sub_e055581c(?) {
    return sub_e055581c
}

function total_users() {
    return total_users
}

function _fallback() payable {
  stop
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'not owner'
    if projectAddress:
        revert with 0, 'initialize only would call once'
    if not arg1:
        revert with 0, 'initialize only would call once'
    projectAddress = arg1
}

function sub_686be645(?) payable {
    if owner != msg.sender:
        revert with 0, 'not owner'
    idx = 0
    while uint8(idx) < 30:
        stor4.length++
        mem[0] = 4
        uint256(stor4[Mask(251, 0, stor4.length.field_5)].field_0) = 3 * 256^stor4.length % 32 or !(255 * 256^stor4.length % 32) and uint256(stor4[Mask(251, 0, stor4.length.field_5)].field_0)
        idx = idx + 1
        continue 
}

function sub_4bdf3bf2(?) {
    require calldata.size - 4 >= 32
    if 1 == uint8(users[address(arg1)].field_2816):
        return (35 * uint256(users[address(arg1)].field_1024) / 1000)
    if uint8(users[address(arg1)].field_2816) == 2:
        return (12 * uint256(users[address(arg1)].field_1024) / 100)
    if uint8(users[address(arg1)].field_2816) != 3:
        return 0
    return (36 * uint256(users[address(arg1)].field_1024) / 100)
}

function team() payable {
    if not projectAddress:
        revert with 0, 'not Initialized'
    if 5 > uint256(users[msg.sender].field_3072):
        revert with 0, '=5'
    uint8(users[msg.sender].field_3328) = 1
    require ext_code.size(sub_6d41c384Address)
    call sub_6d41c384Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, projectAddress, 30 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function close() {
    if owner != msg.sender:
        revert with 0, 'not owner'
    require ext_code.size(sub_6d41c384Address)
    staticcall sub_6d41c384Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6d41c384Address)
    call sub_6d41c384Address.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawall() {
    if not users[msg.sender].field_0:
        if owner != msg.sender:
            revert with 0, 'No upline'
    if not users[msg.sender].field_1536 % 1099511627776:
        revert with 0, 'deposit_time >0'
    require ext_code.size(this.address)
    staticcall this.address.0x4bdf3bf2 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint256(users[msg.sender].field_512) < ext_call.return_data[0]:
        revert with 0, 'Deposit already exists'
    require ext_code.size(sub_6d41c384Address)
    call sub_6d41c384Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, uint256(users[msg.sender].field_1024)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(users[msg.sender].field_512) = 0
    uint256(users[msg.sender].field_1024) = 0
    uint256(users[msg.sender].field_1280) = 0
    users[msg.sender].field_1536 % 1099511627776 = 0
    uint8(users[msg.sender].field_2816) = 0
}

function payoutOf(address arg1) {
    require calldata.size - 4 >= 32
    if not users[address(arg1)].field_1536 % 1099511627776:
        revert with 0, 'deposit_time >0'
    require ext_code.size(this.address)
    staticcall this.address.0x4bdf3bf2 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= uint256(users[address(arg1)].field_1280):
        if ext_call.return_data[0] >= uint256(users[address(arg1)].field_1280):
            return 0, ext_call.return_data[0]
    else:
        if 1 == uint8(users[address(arg1)].field_2816):
            if ext_call.return_data[0] >= 347 * block.timestamp - users[address(arg1)].field_1536 % 1099511627776 / 60 * uint256(users[address(arg1)].field_1024) / 100 * 10^6:
                return (347 * block.timestamp - users[address(arg1)].field_1536 % 1099511627776 / 60 * uint256(users[address(arg1)].field_1024) / 100 * 10^6) - uint256(users[address(arg1)].field_1280), 
                       ext_call.return_data[0]
        else:
            if uint8(users[address(arg1)].field_2816) == 2:
                if ext_call.return_data[0] >= 667 * block.timestamp - users[address(arg1)].field_1536 % 1099511627776 / 60 * uint256(users[address(arg1)].field_1024) / 100 * 10^6:
                    return (667 * block.timestamp - users[address(arg1)].field_1536 % 1099511627776 / 60 * uint256(users[address(arg1)].field_1024) / 100 * 10^6) - uint256(users[address(arg1)].field_1280), 
                           ext_call.return_data[0]
            else:
                if uint8(users[address(arg1)].field_2816) != 3:
                    if ext_call.return_data[0] >= uint256(users[address(arg1)].field_1280):
                        return 0, ext_call.return_data[0]
                else:
                    if ext_call.return_data[0] >= 833 * block.timestamp - users[address(arg1)].field_1536 % 1099511627776 / 60 * uint256(users[address(arg1)].field_1024) / 100 * 10^6:
                        return (833 * block.timestamp - users[address(arg1)].field_1536 % 1099511627776 / 60 * uint256(users[address(arg1)].field_1024) / 100 * 10^6) - uint256(users[address(arg1)].field_1280), 
                               ext_call.return_data[0]
    return ext_call.return_data[0] - uint256(users[address(arg1)].field_1280), ext_call.return_data[0]
}

function deposit(address arg1, uint256 arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    if not projectAddress:
        revert with 0, 'not Initialized'
    if arg3 <= 0:
        revert with 0, 'No _type'
    if arg3 > 3:
        revert with 0, 'No _type'
    if not users[address(msg.sender)].field_0:
        if arg1 != msg.sender:
            if owner != msg.sender:
                if users[address(arg1)].field_1536 % 1099511627776:
                    users[address(msg.sender)].field_0 = arg1
                    uint256(users[arg1].field_256)++
                    emit Upline(msg.sender, arg1);
                    total_users++
                    idx = 0
                    s = arg1
                    while uint8(idx) < stor3.length:
                        if address(s):
                            mem[0] = address(s)
                            mem[32] = 2
                            uint256(users[address(s)].field_2304)++
                            idx = idx + 1
                            s = users[address(s)].field_0
                            continue 
                        if not users[address(msg.sender)].field_0:
                            if owner != msg.sender:
                                revert with 0, 'No upline'
                        if users[address(msg.sender)].field_1536 % 1099511627776:
                            require ext_code.size(this.address)
                            staticcall this.address.0x4bdf3bf2 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if uint256(users[address(msg.sender)].field_512) < ext_call.return_data[0]:
                                revert with 0, 'Deposit already exists'
                        uint8(users[address(msg.sender)].field_2816) = arg3
                        uint256(users[address(msg.sender)].field_512) = 0
                        uint256(users[address(msg.sender)].field_1024) = arg2
                        uint256(users[address(msg.sender)].field_1280) = 0
                        users[address(msg.sender)].field_1536 % 1099511627776 = block.timestamp % 1099511627776
                        uint256(users[address(msg.sender)].field_1792) += arg2
                        total_deposited += arg2
                        emit NewDeposit(arg2, msg.sender);
                        if arg2 >= sub_bdd5b480:
                            uint256(users[address(arg1)].field_3072)++
                        require ext_code.size(sub_6d41c384Address)
                        call sub_6d41c384Address.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, projectAddress, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                else:
                    if owner == arg1:
                        users[address(msg.sender)].field_0 = arg1
                        uint256(users[arg1].field_256)++
                        emit Upline(msg.sender, arg1);
                        total_users++
                        idx = 0
                        s = arg1
                        while uint8(idx) < stor3.length:
                            if address(s):
                                mem[0] = address(s)
                                mem[32] = 2
                                uint256(users[address(s)].field_2304)++
                                idx = idx + 1
                                s = users[address(s)].field_0
                                continue 
                            if not users[address(msg.sender)].field_0:
                                if owner != msg.sender:
                                    revert with 0, 'No upline'
                            if users[address(msg.sender)].field_1536 % 1099511627776:
                                require ext_code.size(this.address)
                                staticcall this.address.0x4bdf3bf2 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if uint256(users[address(msg.sender)].field_512) < ext_call.return_data[0]:
                                    revert with 0, 'Deposit already exists'
                            uint8(users[address(msg.sender)].field_2816) = arg3
                            uint256(users[address(msg.sender)].field_512) = 0
                            uint256(users[address(msg.sender)].field_1024) = arg2
                            uint256(users[address(msg.sender)].field_1280) = 0
                            users[address(msg.sender)].field_1536 % 1099511627776 = block.timestamp % 1099511627776
                            uint256(users[address(msg.sender)].field_1792) += arg2
                            total_deposited += arg2
                            emit NewDeposit(arg2, msg.sender);
                            if arg2 >= sub_bdd5b480:
                                uint256(users[address(arg1)].field_3072)++
                            require ext_code.size(sub_6d41c384Address)
                            call sub_6d41c384Address.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, projectAddress, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
    if not users[address(msg.sender)].field_0:
        if owner != msg.sender:
            revert with 0, 'No upline'
    if users[address(msg.sender)].field_1536 % 1099511627776:
        require ext_code.size(this.address)
        staticcall this.address.0x4bdf3bf2 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint256(users[address(msg.sender)].field_512) < ext_call.return_data[0]:
            revert with 0, 'Deposit already exists'
    uint8(users[address(msg.sender)].field_2816) = arg3
    uint256(users[address(msg.sender)].field_512) = 0
    uint256(users[address(msg.sender)].field_1024) = arg2
    uint256(users[address(msg.sender)].field_1280) = 0
    users[address(msg.sender)].field_1536 % 1099511627776 = block.timestamp % 1099511627776
    uint256(users[address(msg.sender)].field_1792) += arg2
    total_deposited += arg2
    emit NewDeposit(arg2, msg.sender);
    if arg2 >= sub_bdd5b480:
        uint256(users[address(arg1)].field_3072)++
    require ext_code.size(sub_6d41c384Address)
    call sub_6d41c384Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, projectAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdraw() {
    require ext_code.size(this.address)
    staticcall this.address.0x6da61d1e with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
        revert with 0, 'Full payouts'
    if not ext_call.return_data[0]:
        if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
            if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'Zero payout'
                uint256(users[msg.sender].field_2048) += ext_call.return_data[0]
                total_withdraw += ext_call.return_data[0]
                require ext_code.size(sub_6d41c384Address)
                call sub_6d41c384Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit Withdraw(ext_call.return_data[0], msg.sender);
            else:
                if not uint256(users[msg.sender].field_2560):
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'Zero payout'
                    uint256(users[msg.sender].field_2048) += ext_call.return_data[0]
                    total_withdraw += ext_call.return_data[0]
                    require ext_code.size(sub_6d41c384Address)
                    call sub_6d41c384Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Withdraw(ext_call.return_data[0], msg.sender);
                else:
                    if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                        uint256(users[msg.sender].field_2560) = 0
                        uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                        if uint256(users[msg.sender].field_2560) + ext_call.return_data[0] <= 0:
                            revert with 0, 'Zero payout'
                        uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                        total_withdraw = uint256(users[msg.sender].field_2560) + ext_call.return_data[0] + total_withdraw
                        require ext_code.size(sub_6d41c384Address)
                        call sub_6d41c384Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, uint256(users[msg.sender].field_2560) + ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit Withdraw((uint256(users[msg.sender].field_2560) + ext_call.return_data[0]), msg.sender);
                    else:
                        uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                        uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                        if ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] <= 0:
                            revert with 0, 'Zero payout'
                        uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                        total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + total_withdraw
                        require ext_code.size(sub_6d41c384Address)
                        call sub_6d41c384Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]), msg.sender);
        else:
            if not uint256(users[msg.sender].field_768):
                if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'Zero payout'
                    uint256(users[msg.sender].field_2048) += ext_call.return_data[0]
                    total_withdraw += ext_call.return_data[0]
                    require ext_code.size(sub_6d41c384Address)
                    call sub_6d41c384Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Withdraw(ext_call.return_data[0], msg.sender);
                else:
                    if not uint256(users[msg.sender].field_2560):
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'Zero payout'
                        uint256(users[msg.sender].field_2048) += ext_call.return_data[0]
                        total_withdraw += ext_call.return_data[0]
                        require ext_code.size(sub_6d41c384Address)
                        call sub_6d41c384Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit Withdraw(ext_call.return_data[0], msg.sender);
                    else:
                        if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                            uint256(users[msg.sender].field_2560) = 0
                            uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                            if uint256(users[msg.sender].field_2560) + ext_call.return_data[0] <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                            total_withdraw = uint256(users[msg.sender].field_2560) + ext_call.return_data[0] + total_withdraw
                            require ext_code.size(sub_6d41c384Address)
                            call sub_6d41c384Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, uint256(users[msg.sender].field_2560) + ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit Withdraw((uint256(users[msg.sender].field_2560) + ext_call.return_data[0]), msg.sender);
                        else:
                            uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                            uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                            if ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                            total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + total_withdraw
                            require ext_code.size(sub_6d41c384Address)
                            call sub_6d41c384Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]), msg.sender);
            else:
                if ext_call.return_data[32] >= uint256(users[msg.sender].field_768) + uint256(users[msg.sender].field_512):
                    uint256(users[msg.sender].field_768) = 0
                    uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_768)
                    if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                        if uint256(users[msg.sender].field_768) + ext_call.return_data[0] <= 0:
                            revert with 0, 'Zero payout'
                        uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_768) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                        total_withdraw = uint256(users[msg.sender].field_768) + ext_call.return_data[0] + total_withdraw
                        require ext_code.size(sub_6d41c384Address)
                        call sub_6d41c384Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, uint256(users[msg.sender].field_768) + ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit Withdraw((uint256(users[msg.sender].field_768) + ext_call.return_data[0]), msg.sender);
                    else:
                        if not uint256(users[msg.sender].field_2560):
                            if uint256(users[msg.sender].field_768) + ext_call.return_data[0] <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_768) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                            total_withdraw = uint256(users[msg.sender].field_768) + ext_call.return_data[0] + total_withdraw
                            require ext_code.size(sub_6d41c384Address)
                            call sub_6d41c384Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, uint256(users[msg.sender].field_768) + ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit Withdraw((uint256(users[msg.sender].field_768) + ext_call.return_data[0]), msg.sender);
                        else:
                            if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                                uint256(users[msg.sender].field_2560) = 0
                                uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                                if uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[0] <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                total_withdraw = uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[0] + total_withdraw
                                require ext_code.size(sub_6d41c384Address)
                                call sub_6d41c384Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw((uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[0]), msg.sender);
                            else:
                                uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                if ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_768) + ext_call.return_data[0] <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_768) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_768) + ext_call.return_data[0] + total_withdraw
                                require ext_code.size(sub_6d41c384Address)
                                call sub_6d41c384Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_768) + ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_768) + ext_call.return_data[0]), msg.sender);
                else:
                    uint256(users[msg.sender].field_768) = uint256(users[msg.sender].field_768) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                    uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                    if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                        if ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] <= 0:
                            revert with 0, 'Zero payout'
                        uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                        total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + total_withdraw
                        require ext_code.size(sub_6d41c384Address)
                        call sub_6d41c384Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]), msg.sender);
                    else:
                        if not uint256(users[msg.sender].field_2560):
                            if ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                            total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + total_withdraw
                            require ext_code.size(sub_6d41c384Address)
                            call sub_6d41c384Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]), msg.sender);
                        else:
                            if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                                uint256(users[msg.sender].field_2560) = 0
                                uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                                if uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                total_withdraw = uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + total_withdraw
                                require ext_code.size(sub_6d41c384Address)
                                call sub_6d41c384Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw((uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]), msg.sender);
                            else:
                                uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                if (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + ext_call.return_data[0] <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[msg.sender].field_2048) = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                total_withdraw = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + ext_call.return_data[0] + total_withdraw
                                require ext_code.size(sub_6d41c384Address)
                                call sub_6d41c384Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw(((2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + ext_call.return_data[0]), msg.sender);
    else:
        if ext_call.return_data[32] >= ext_call.return_data[0] + uint256(users[msg.sender].field_512):
            uint256(users[msg.sender].field_1280) += ext_call.return_data[0]
            uint256(users[msg.sender].field_512) += ext_call.return_data[0]
            mem[0] = msg.sender
            mem[32] = 2
            idx = 0
            s = stor[sha3(mem[0 len 64])]
            while uint16(idx) < stor3.length:
                if address(s):
                    if uint256(users[address(s)].field_256) >= uint16(idx + 1):
                        require uint16(idx) < stor3.length
                        uint256(users[address(s)].field_2560) += ext_call.return_data[0] * stor('array', ('mask_shl', 11, 5, -5, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)] / 100
                        mem[96] = ext_call.return_data[0] * stor('array', ('mask_shl', 11, 5, -5, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)] / 100
                        emit MatchPayout((ext_call.return_data[0] * stor('array', ('mask_shl', 11, 5, -5, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)] / 100), address(s), msg.sender);
                    mem[0] = address(s)
                    mem[32] = 2
                    idx = idx + 1
                    s = users[address(s)].field_0
                    continue 
                if 1 == bool(uint8(users[users[address(msg.sender)].field_0].field_3328)):
                    idx = 0
                    s = 0
                    t = users[address(msg.sender)].field_0
                    while uint16(idx) < stor4.length:
                        if address(t):
                            if uint256(users[address(t)].field_256) >= uint16(idx + 1):
                                require uint16(idx) < stor4.length
                                if 5 > uint256(users[address(s)].field_3072):
                                    uint256(users[address(t)].field_2560) += ext_call.return_data[0] * stor('array', ('mask_shl', 11, 5, -5, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)] / 100
                                else:
                                    uint256(users[address(t)].field_2560) += ext_call.return_data[0] / 100
                            mem[0] = address(t)
                            mem[32] = 2
                            idx = idx + 1
                            s = t
                            t = users[address(t)].field_0
                            continue 
                        if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                            if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[msg.sender].field_2048) += ext_call.return_data[0]
                                total_withdraw += ext_call.return_data[0]
                                require ext_code.size(sub_6d41c384Address)
                                call sub_6d41c384Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw(ext_call.return_data[0], msg.sender);
                            else:
                                if not uint256(users[msg.sender].field_2560):
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[msg.sender].field_2048) += ext_call.return_data[0]
                                    total_withdraw += ext_call.return_data[0]
                                    require ext_code.size(sub_6d41c384Address)
                                    call sub_6d41c384Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit Withdraw(ext_call.return_data[0], msg.sender);
                                else:
                                    if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                                        uint256(users[msg.sender].field_2560) = 0
                                        uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                                        if uint256(users[msg.sender].field_2560) + ext_call.return_data[0] <= 0:
                                            revert with 0, 'Zero payout'
                                        uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                        total_withdraw = uint256(users[msg.sender].field_2560) + ext_call.return_data[0] + total_withdraw
                                        require ext_code.size(sub_6d41c384Address)
                                        call sub_6d41c384Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, uint256(users[msg.sender].field_2560) + ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit Withdraw((uint256(users[msg.sender].field_2560) + ext_call.return_data[0]), msg.sender);
                                    else:
                                        uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                        uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                        if ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] <= 0:
                                            revert with 0, 'Zero payout'
                                        uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                        total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + total_withdraw
                                        require ext_code.size(sub_6d41c384Address)
                                        call sub_6d41c384Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]), msg.sender);
                        else:
                            if not uint256(users[msg.sender].field_768):
                                if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[msg.sender].field_2048) += ext_call.return_data[0]
                                    total_withdraw += ext_call.return_data[0]
                                    require ext_code.size(sub_6d41c384Address)
                                    call sub_6d41c384Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit Withdraw(ext_call.return_data[0], msg.sender);
                                else:
                                    if not uint256(users[msg.sender].field_2560):
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Zero payout'
                                        uint256(users[msg.sender].field_2048) += ext_call.return_data[0]
                                        total_withdraw += ext_call.return_data[0]
                                        require ext_code.size(sub_6d41c384Address)
                                        call sub_6d41c384Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit Withdraw(ext_call.return_data[0], msg.sender);
                                    else:
                                        if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                                            uint256(users[msg.sender].field_2560) = 0
                                            uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                                            if uint256(users[msg.sender].field_2560) + ext_call.return_data[0] <= 0:
                                                revert with 0, 'Zero payout'
                                            uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                            total_withdraw = uint256(users[msg.sender].field_2560) + ext_call.return_data[0] + total_withdraw
                                            require ext_code.size(sub_6d41c384Address)
                                            call sub_6d41c384Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, uint256(users[msg.sender].field_2560) + ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Withdraw((uint256(users[msg.sender].field_2560) + ext_call.return_data[0]), msg.sender);
                                        else:
                                            uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                            uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                            if ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] <= 0:
                                                revert with 0, 'Zero payout'
                                            uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                            total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + total_withdraw
                                            require ext_code.size(sub_6d41c384Address)
                                            call sub_6d41c384Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]), msg.sender);
                            else:
                                if ext_call.return_data[32] >= uint256(users[msg.sender].field_768) + uint256(users[msg.sender].field_512):
                                    uint256(users[msg.sender].field_768) = 0
                                    uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_768)
                                    if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                                        if uint256(users[msg.sender].field_768) + ext_call.return_data[0] <= 0:
                                            revert with 0, 'Zero payout'
                                        uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_768) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                        total_withdraw = uint256(users[msg.sender].field_768) + ext_call.return_data[0] + total_withdraw
                                        require ext_code.size(sub_6d41c384Address)
                                        call sub_6d41c384Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, uint256(users[msg.sender].field_768) + ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit Withdraw((uint256(users[msg.sender].field_768) + ext_call.return_data[0]), msg.sender);
                                    else:
                                        if not uint256(users[msg.sender].field_2560):
                                            if uint256(users[msg.sender].field_768) + ext_call.return_data[0] <= 0:
                                                revert with 0, 'Zero payout'
                                            uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_768) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                            total_withdraw = uint256(users[msg.sender].field_768) + ext_call.return_data[0] + total_withdraw
                                            require ext_code.size(sub_6d41c384Address)
                                            call sub_6d41c384Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, uint256(users[msg.sender].field_768) + ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Withdraw((uint256(users[msg.sender].field_768) + ext_call.return_data[0]), msg.sender);
                                        else:
                                            if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                                                uint256(users[msg.sender].field_2560) = 0
                                                uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                                                if uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[0] <= 0:
                                                    revert with 0, 'Zero payout'
                                                uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                                total_withdraw = uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[0] + total_withdraw
                                                require ext_code.size(sub_6d41c384Address)
                                                call sub_6d41c384Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                emit Withdraw((uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[0]), msg.sender);
                                            else:
                                                uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                                uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                                if ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_768) + ext_call.return_data[0] <= 0:
                                                    revert with 0, 'Zero payout'
                                                uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_768) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                                total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_768) + ext_call.return_data[0] + total_withdraw
                                                require ext_code.size(sub_6d41c384Address)
                                                call sub_6d41c384Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_768) + ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_768) + ext_call.return_data[0]), msg.sender);
                                else:
                                    uint256(users[msg.sender].field_768) = uint256(users[msg.sender].field_768) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                    uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                    if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                                        if ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] <= 0:
                                            revert with 0, 'Zero payout'
                                        uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                        total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + total_withdraw
                                        require ext_code.size(sub_6d41c384Address)
                                        call sub_6d41c384Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]), msg.sender);
                                    else:
                                        if not uint256(users[msg.sender].field_2560):
                                            if ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] <= 0:
                                                revert with 0, 'Zero payout'
                                            uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                            total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + total_withdraw
                                            require ext_code.size(sub_6d41c384Address)
                                            call sub_6d41c384Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]), msg.sender);
                                        else:
                                            if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                                                uint256(users[msg.sender].field_2560) = 0
                                                uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                                                if uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] <= 0:
                                                    revert with 0, 'Zero payout'
                                                uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                                total_withdraw = uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + total_withdraw
                                                require ext_code.size(sub_6d41c384Address)
                                                call sub_6d41c384Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                emit Withdraw((uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]), msg.sender);
                                            else:
                                                uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                                uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                                if (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + ext_call.return_data[0] <= 0:
                                                    revert with 0, 'Zero payout'
                                                uint256(users[msg.sender].field_2048) = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                                total_withdraw = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + ext_call.return_data[0] + total_withdraw
                                                require ext_code.size(sub_6d41c384Address)
                                                call sub_6d41c384Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                emit Withdraw(((2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + ext_call.return_data[0]), msg.sender);
                        if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                            emit LimitReached(uint256(users[msg.sender].field_512), msg.sender);
                if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                    if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'Zero payout'
                        uint256(users[msg.sender].field_2048) += ext_call.return_data[0]
                        total_withdraw += ext_call.return_data[0]
                        require ext_code.size(sub_6d41c384Address)
                        call sub_6d41c384Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit Withdraw(ext_call.return_data[0], msg.sender);
                    else:
                        if not uint256(users[msg.sender].field_2560):
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[msg.sender].field_2048) += ext_call.return_data[0]
                            total_withdraw += ext_call.return_data[0]
                            require ext_code.size(sub_6d41c384Address)
                            call sub_6d41c384Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit Withdraw(ext_call.return_data[0], msg.sender);
                        else:
                            if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                                uint256(users[msg.sender].field_2560) = 0
                                uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                                if uint256(users[msg.sender].field_2560) + ext_call.return_data[0] <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                total_withdraw = uint256(users[msg.sender].field_2560) + ext_call.return_data[0] + total_withdraw
                                require ext_code.size(sub_6d41c384Address)
                                call sub_6d41c384Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, uint256(users[msg.sender].field_2560) + ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw((uint256(users[msg.sender].field_2560) + ext_call.return_data[0]), msg.sender);
                            else:
                                uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                if ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + total_withdraw
                                require ext_code.size(sub_6d41c384Address)
                                call sub_6d41c384Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]), msg.sender);
                else:
                    if not uint256(users[msg.sender].field_768):
                        if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[msg.sender].field_2048) += ext_call.return_data[0]
                            total_withdraw += ext_call.return_data[0]
                            require ext_code.size(sub_6d41c384Address)
                            call sub_6d41c384Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit Withdraw(ext_call.return_data[0], msg.sender);
                        else:
                            if not uint256(users[msg.sender].field_2560):
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[msg.sender].field_2048) += ext_call.return_data[0]
                                total_withdraw += ext_call.return_data[0]
                                require ext_code.size(sub_6d41c384Address)
                                call sub_6d41c384Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw(ext_call.return_data[0], msg.sender);
                            else:
                                if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                                    uint256(users[msg.sender].field_2560) = 0
                                    uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                                    if uint256(users[msg.sender].field_2560) + ext_call.return_data[0] <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                    total_withdraw = uint256(users[msg.sender].field_2560) + ext_call.return_data[0] + total_withdraw
                                    require ext_code.size(sub_6d41c384Address)
                                    call sub_6d41c384Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, uint256(users[msg.sender].field_2560) + ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit Withdraw((uint256(users[msg.sender].field_2560) + ext_call.return_data[0]), msg.sender);
                                else:
                                    uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                    uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                    if ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                    total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + total_withdraw
                                    require ext_code.size(sub_6d41c384Address)
                                    call sub_6d41c384Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]), msg.sender);
                    else:
                        if ext_call.return_data[32] >= uint256(users[msg.sender].field_768) + uint256(users[msg.sender].field_512):
                            uint256(users[msg.sender].field_768) = 0
                            uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_768)
                            if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                                if uint256(users[msg.sender].field_768) + ext_call.return_data[0] <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_768) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                total_withdraw = uint256(users[msg.sender].field_768) + ext_call.return_data[0] + total_withdraw
                                require ext_code.size(sub_6d41c384Address)
                                call sub_6d41c384Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, uint256(users[msg.sender].field_768) + ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw((uint256(users[msg.sender].field_768) + ext_call.return_data[0]), msg.sender);
                            else:
                                if not uint256(users[msg.sender].field_2560):
                                    if uint256(users[msg.sender].field_768) + ext_call.return_data[0] <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_768) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                    total_withdraw = uint256(users[msg.sender].field_768) + ext_call.return_data[0] + total_withdraw
                                    require ext_code.size(sub_6d41c384Address)
                                    call sub_6d41c384Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, uint256(users[msg.sender].field_768) + ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit Withdraw((uint256(users[msg.sender].field_768) + ext_call.return_data[0]), msg.sender);
                                else:
                                    if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                                        uint256(users[msg.sender].field_2560) = 0
                                        uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                                        if uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[0] <= 0:
                                            revert with 0, 'Zero payout'
                                        uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                        total_withdraw = uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[0] + total_withdraw
                                        require ext_code.size(sub_6d41c384Address)
                                        call sub_6d41c384Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit Withdraw((uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[0]), msg.sender);
                                    else:
                                        uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                        uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                        if ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_768) + ext_call.return_data[0] <= 0:
                                            revert with 0, 'Zero payout'
                                        uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_768) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                        total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_768) + ext_call.return_data[0] + total_withdraw
                                        require ext_code.size(sub_6d41c384Address)
                                        call sub_6d41c384Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_768) + ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_768) + ext_call.return_data[0]), msg.sender);
                        else:
                            uint256(users[msg.sender].field_768) = uint256(users[msg.sender].field_768) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                            uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                            if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                                if ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + total_withdraw
                                require ext_code.size(sub_6d41c384Address)
                                call sub_6d41c384Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]), msg.sender);
                            else:
                                if not uint256(users[msg.sender].field_2560):
                                    if ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                    total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + total_withdraw
                                    require ext_code.size(sub_6d41c384Address)
                                    call sub_6d41c384Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]), msg.sender);
                                else:
                                    if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                                        uint256(users[msg.sender].field_2560) = 0
                                        uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                                        if uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] <= 0:
                                            revert with 0, 'Zero payout'
                                        uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                        total_withdraw = uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + total_withdraw
                                        require ext_code.size(sub_6d41c384Address)
                                        call sub_6d41c384Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit Withdraw((uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]), msg.sender);
                                    else:
                                        uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                        uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                        if (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + ext_call.return_data[0] <= 0:
                                            revert with 0, 'Zero payout'
                                        uint256(users[msg.sender].field_2048) = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                        total_withdraw = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + ext_call.return_data[0] + total_withdraw
                                        require ext_code.size(sub_6d41c384Address)
                                        call sub_6d41c384Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit Withdraw(((2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + ext_call.return_data[0]), msg.sender);
                if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                    emit LimitReached(uint256(users[msg.sender].field_512), msg.sender);
            if 1 == bool(uint8(users[users[address(msg.sender)].field_0].field_3328)):
                idx = 0
                s = 0
                t = users[address(msg.sender)].field_0
                while uint16(idx) < stor4.length:
                    if address(t):
                        if uint256(users[address(t)].field_256) >= uint16(idx + 1):
                            require uint16(idx) < stor4.length
                            if 5 > uint256(users[address(s)].field_3072):
                                uint256(users[address(t)].field_2560) += ext_call.return_data[0] * stor('array', ('mask_shl', 11, 5, -5, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)] / 100
                            else:
                                uint256(users[address(t)].field_2560) += ext_call.return_data[0] / 100
                        mem[0] = address(t)
                        mem[32] = 2
                        idx = idx + 1
                        s = t
                        t = users[address(t)].field_0
                        continue 
                    if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                        if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[msg.sender].field_2048) += ext_call.return_data[0]
                            total_withdraw += ext_call.return_data[0]
                            require ext_code.size(sub_6d41c384Address)
                            call sub_6d41c384Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit Withdraw(ext_call.return_data[0], msg.sender);
                        else:
                            if not uint256(users[msg.sender].field_2560):
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[msg.sender].field_2048) += ext_call.return_data[0]
                                total_withdraw += ext_call.return_data[0]
                                require ext_code.size(sub_6d41c384Address)
                                call sub_6d41c384Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw(ext_call.return_data[0], msg.sender);
                            else:
                                if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                                    uint256(users[msg.sender].field_2560) = 0
                                    uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                                    if uint256(users[msg.sender].field_2560) + ext_call.return_data[0] <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                    total_withdraw = uint256(users[msg.sender].field_2560) + ext_call.return_data[0] + total_withdraw
                                    require ext_code.size(sub_6d41c384Address)
                                    call sub_6d41c384Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, uint256(users[msg.sender].field_2560) + ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit Withdraw((uint256(users[msg.sender].field_2560) + ext_call.return_data[0]), msg.sender);
                                else:
                                    uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                    uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                    if ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                    total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + total_withdraw
                                    require ext_code.size(sub_6d41c384Address)
                                    call sub_6d41c384Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]), msg.sender);
                    else:
                        if not uint256(users[msg.sender].field_768):
                            if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[msg.sender].field_2048) += ext_call.return_data[0]
                                total_withdraw += ext_call.return_data[0]
                                require ext_code.size(sub_6d41c384Address)
                                call sub_6d41c384Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw(ext_call.return_data[0], msg.sender);
                            else:
                                if not uint256(users[msg.sender].field_2560):
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[msg.sender].field_2048) += ext_call.return_data[0]
                                    total_withdraw += ext_call.return_data[0]
                                    require ext_code.size(sub_6d41c384Address)
                                    call sub_6d41c384Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit Withdraw(ext_call.return_data[0], msg.sender);
                                else:
                                    if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                                        uint256(users[msg.sender].field_2560) = 0
                                        uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                                        if uint256(users[msg.sender].field_2560) + ext_call.return_data[0] <= 0:
                                            revert with 0, 'Zero payout'
                                        uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                        total_withdraw = uint256(users[msg.sender].field_2560) + ext_call.return_data[0] + total_withdraw
                                        require ext_code.size(sub_6d41c384Address)
                                        call sub_6d41c384Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, uint256(users[msg.sender].field_2560) + ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit Withdraw((uint256(users[msg.sender].field_2560) + ext_call.return_data[0]), msg.sender);
                                    else:
                                        uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                        uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                        if ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] <= 0:
                                            revert with 0, 'Zero payout'
                                        uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                        total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + total_withdraw
                                        require ext_code.size(sub_6d41c384Address)
                                        call sub_6d41c384Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]), msg.sender);
                        else:
                            if ext_call.return_data[32] >= uint256(users[msg.sender].field_768) + uint256(users[msg.sender].field_512):
                                uint256(users[msg.sender].field_768) = 0
                                uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_768)
                                if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                                    if uint256(users[msg.sender].field_768) + ext_call.return_data[0] <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_768) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                    total_withdraw = uint256(users[msg.sender].field_768) + ext_call.return_data[0] + total_withdraw
                                    require ext_code.size(sub_6d41c384Address)
                                    call sub_6d41c384Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, uint256(users[msg.sender].field_768) + ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit Withdraw((uint256(users[msg.sender].field_768) + ext_call.return_data[0]), msg.sender);
                                else:
                                    if not uint256(users[msg.sender].field_2560):
                                        if uint256(users[msg.sender].field_768) + ext_call.return_data[0] <= 0:
                                            revert with 0, 'Zero payout'
                                        uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_768) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                        total_withdraw = uint256(users[msg.sender].field_768) + ext_call.return_data[0] + total_withdraw
                                        require ext_code.size(sub_6d41c384Address)
                                        call sub_6d41c384Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, uint256(users[msg.sender].field_768) + ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit Withdraw((uint256(users[msg.sender].field_768) + ext_call.return_data[0]), msg.sender);
                                    else:
                                        if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                                            uint256(users[msg.sender].field_2560) = 0
                                            uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                                            if uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[0] <= 0:
                                                revert with 0, 'Zero payout'
                                            uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                            total_withdraw = uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[0] + total_withdraw
                                            require ext_code.size(sub_6d41c384Address)
                                            call sub_6d41c384Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Withdraw((uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[0]), msg.sender);
                                        else:
                                            uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                            uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                            if ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_768) + ext_call.return_data[0] <= 0:
                                                revert with 0, 'Zero payout'
                                            uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_768) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                            total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_768) + ext_call.return_data[0] + total_withdraw
                                            require ext_code.size(sub_6d41c384Address)
                                            call sub_6d41c384Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_768) + ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_768) + ext_call.return_data[0]), msg.sender);
                            else:
                                uint256(users[msg.sender].field_768) = uint256(users[msg.sender].field_768) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                                    if ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                    total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + total_withdraw
                                    require ext_code.size(sub_6d41c384Address)
                                    call sub_6d41c384Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]), msg.sender);
                                else:
                                    if not uint256(users[msg.sender].field_2560):
                                        if ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] <= 0:
                                            revert with 0, 'Zero payout'
                                        uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                        total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + total_withdraw
                                        require ext_code.size(sub_6d41c384Address)
                                        call sub_6d41c384Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]), msg.sender);
                                    else:
                                        if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                                            uint256(users[msg.sender].field_2560) = 0
                                            uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                                            if uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] <= 0:
                                                revert with 0, 'Zero payout'
                                            uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                            total_withdraw = uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + total_withdraw
                                            require ext_code.size(sub_6d41c384Address)
                                            call sub_6d41c384Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Withdraw((uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]), msg.sender);
                                        else:
                                            uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                            uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                            if (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + ext_call.return_data[0] <= 0:
                                                revert with 0, 'Zero payout'
                                            uint256(users[msg.sender].field_2048) = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                            total_withdraw = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + ext_call.return_data[0] + total_withdraw
                                            require ext_code.size(sub_6d41c384Address)
                                            call sub_6d41c384Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Withdraw(((2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + ext_call.return_data[0]), msg.sender);
                    if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                        emit LimitReached(uint256(users[msg.sender].field_512), msg.sender);
            if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'Zero payout'
                    uint256(users[msg.sender].field_2048) += ext_call.return_data[0]
                    total_withdraw += ext_call.return_data[0]
                    require ext_code.size(sub_6d41c384Address)
                    call sub_6d41c384Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Withdraw(ext_call.return_data[0], msg.sender);
                else:
                    if not uint256(users[msg.sender].field_2560):
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'Zero payout'
                        uint256(users[msg.sender].field_2048) += ext_call.return_data[0]
                        total_withdraw += ext_call.return_data[0]
                        require ext_code.size(sub_6d41c384Address)
                        call sub_6d41c384Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit Withdraw(ext_call.return_data[0], msg.sender);
                    else:
                        if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                            uint256(users[msg.sender].field_2560) = 0
                            uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                            if uint256(users[msg.sender].field_2560) + ext_call.return_data[0] <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                            total_withdraw = uint256(users[msg.sender].field_2560) + ext_call.return_data[0] + total_withdraw
                            require ext_code.size(sub_6d41c384Address)
                            call sub_6d41c384Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, uint256(users[msg.sender].field_2560) + ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit Withdraw((uint256(users[msg.sender].field_2560) + ext_call.return_data[0]), msg.sender);
                        else:
                            uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                            uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                            if ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                            total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + total_withdraw
                            require ext_code.size(sub_6d41c384Address)
                            call sub_6d41c384Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]), msg.sender);
            else:
                if not uint256(users[msg.sender].field_768):
                    if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'Zero payout'
                        uint256(users[msg.sender].field_2048) += ext_call.return_data[0]
                        total_withdraw += ext_call.return_data[0]
                        require ext_code.size(sub_6d41c384Address)
                        call sub_6d41c384Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit Withdraw(ext_call.return_data[0], msg.sender);
                    else:
                        if not uint256(users[msg.sender].field_2560):
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[msg.sender].field_2048) += ext_call.return_data[0]
                            total_withdraw += ext_call.return_data[0]
                            require ext_code.size(sub_6d41c384Address)
                            call sub_6d41c384Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit Withdraw(ext_call.return_data[0], msg.sender);
                        else:
                            if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                                uint256(users[msg.sender].field_2560) = 0
                                uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                                if uint256(users[msg.sender].field_2560) + ext_call.return_data[0] <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                total_withdraw = uint256(users[msg.sender].field_2560) + ext_call.return_data[0] + total_withdraw
                                require ext_code.size(sub_6d41c384Address)
                                call sub_6d41c384Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, uint256(users[msg.sender].field_2560) + ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw((uint256(users[msg.sender].field_2560) + ext_call.return_data[0]), msg.sender);
                            else:
                                uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                if ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + total_withdraw
                                require ext_code.size(sub_6d41c384Address)
                                call sub_6d41c384Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]), msg.sender);
                else:
                    if ext_call.return_data[32] >= uint256(users[msg.sender].field_768) + uint256(users[msg.sender].field_512):
                        uint256(users[msg.sender].field_768) = 0
                        uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_768)
                        if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                            if uint256(users[msg.sender].field_768) + ext_call.return_data[0] <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_768) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                            total_withdraw = uint256(users[msg.sender].field_768) + ext_call.return_data[0] + total_withdraw
                            require ext_code.size(sub_6d41c384Address)
                            call sub_6d41c384Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, uint256(users[msg.sender].field_768) + ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit Withdraw((uint256(users[msg.sender].field_768) + ext_call.return_data[0]), msg.sender);
                        else:
                            if not uint256(users[msg.sender].field_2560):
                                if uint256(users[msg.sender].field_768) + ext_call.return_data[0] <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_768) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                total_withdraw = uint256(users[msg.sender].field_768) + ext_call.return_data[0] + total_withdraw
                                require ext_code.size(sub_6d41c384Address)
                                call sub_6d41c384Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, uint256(users[msg.sender].field_768) + ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw((uint256(users[msg.sender].field_768) + ext_call.return_data[0]), msg.sender);
                            else:
                                if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                                    uint256(users[msg.sender].field_2560) = 0
                                    uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                                    if uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[0] <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                    total_withdraw = uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[0] + total_withdraw
                                    require ext_code.size(sub_6d41c384Address)
                                    call sub_6d41c384Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit Withdraw((uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[0]), msg.sender);
                                else:
                                    uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                    uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                    if ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_768) + ext_call.return_data[0] <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_768) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                    total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_768) + ext_call.return_data[0] + total_withdraw
                                    require ext_code.size(sub_6d41c384Address)
                                    call sub_6d41c384Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_768) + ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_768) + ext_call.return_data[0]), msg.sender);
                    else:
                        uint256(users[msg.sender].field_768) = uint256(users[msg.sender].field_768) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                        uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                        if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                            if ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                            total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + total_withdraw
                            require ext_code.size(sub_6d41c384Address)
                            call sub_6d41c384Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]), msg.sender);
                        else:
                            if not uint256(users[msg.sender].field_2560):
                                if ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + total_withdraw
                                require ext_code.size(sub_6d41c384Address)
                                call sub_6d41c384Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]), msg.sender);
                            else:
                                if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                                    uint256(users[msg.sender].field_2560) = 0
                                    uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                                    if uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                    total_withdraw = uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0] + total_withdraw
                                    require ext_code.size(sub_6d41c384Address)
                                    call sub_6d41c384Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit Withdraw((uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + ext_call.return_data[0]), msg.sender);
                                else:
                                    uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                    uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                    if (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + ext_call.return_data[0] <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[msg.sender].field_2048) = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + ext_call.return_data[0] + uint256(users[msg.sender].field_2048)
                                    total_withdraw = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + ext_call.return_data[0] + total_withdraw
                                    require ext_code.size(sub_6d41c384Address)
                                    call sub_6d41c384Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit Withdraw(((2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + ext_call.return_data[0]), msg.sender);
        else:
            uint256(users[msg.sender].field_1280) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_1280)
            uint256(users[msg.sender].field_512) = ext_call.return_data[32]
            mem[0] = msg.sender
            mem[32] = 2
            idx = 0
            s = stor[sha3(mem[0 len 64])]
            while uint16(idx) < stor3.length:
                if address(s):
                    if uint256(users[address(s)].field_256) >= uint16(idx + 1):
                        require uint16(idx) < stor3.length
                        uint256(users[address(s)].field_2560) += (ext_call.return_data[32] * stor('array', ('mask_shl', 11, 5, -5, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]) - (uint256(users[msg.sender].field_512) * stor('array', ('mask_shl', 11, 5, -5, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]) / 100
                        mem[96] = (ext_call.return_data[32] * stor('array', ('mask_shl', 11, 5, -5, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]) - (uint256(users[msg.sender].field_512) * stor('array', ('mask_shl', 11, 5, -5, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]) / 100
                        emit MatchPayout(((ext_call.return_data[32] * stor('array', ('mask_shl', 11, 5, -5, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]) - (uint256(users[msg.sender].field_512) * stor('array', ('mask_shl', 11, 5, -5, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]) / 100), address(s), msg.sender);
                    mem[0] = address(s)
                    mem[32] = 2
                    idx = idx + 1
                    s = users[address(s)].field_0
                    continue 
                if 1 == bool(uint8(users[users[address(msg.sender)].field_0].field_3328)):
                    idx = 0
                    s = 0
                    t = users[address(msg.sender)].field_0
                    while uint16(idx) < stor4.length:
                        if address(t):
                            if uint256(users[address(t)].field_256) >= uint16(idx + 1):
                                require uint16(idx) < stor4.length
                                if 5 > uint256(users[address(s)].field_3072):
                                    uint256(users[address(t)].field_2560) += (ext_call.return_data[32] * stor('array', ('mask_shl', 11, 5, -5, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]) - (uint256(users[msg.sender].field_512) * stor('array', ('mask_shl', 11, 5, -5, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]) / 100
                                else:
                                    uint256(users[address(t)].field_2560) += ext_call.return_data[32] - uint256(users[msg.sender].field_512) / 100
                            mem[0] = address(t)
                            mem[32] = 2
                            idx = idx + 1
                            s = t
                            t = users[address(t)].field_0
                            continue 
                        if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                            if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                                if ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                                total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                                require ext_code.size(sub_6d41c384Address)
                                call sub_6d41c384Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                            else:
                                if not uint256(users[msg.sender].field_2560):
                                    if ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                                    total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                                    require ext_code.size(sub_6d41c384Address)
                                    call sub_6d41c384Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                                else:
                                    if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                                        uint256(users[msg.sender].field_2560) = 0
                                        uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                                        if uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                                            revert with 0, 'Zero payout'
                                        uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                                        total_withdraw = uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                                        require ext_code.size(sub_6d41c384Address)
                                        call sub_6d41c384Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit Withdraw((uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                                    else:
                                        uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                        uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                        if (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) <= 0:
                                            revert with 0, 'Zero payout'
                                        uint256(users[msg.sender].field_2048) = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_2048)
                                        total_withdraw = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + total_withdraw
                                        require ext_code.size(sub_6d41c384Address)
                                        call sub_6d41c384Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit Withdraw(((2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))), msg.sender);
                        else:
                            if not uint256(users[msg.sender].field_768):
                                if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                                    if ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                                    total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                                    require ext_code.size(sub_6d41c384Address)
                                    call sub_6d41c384Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                                else:
                                    if not uint256(users[msg.sender].field_2560):
                                        if ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                                            revert with 0, 'Zero payout'
                                        uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                                        total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                                        require ext_code.size(sub_6d41c384Address)
                                        call sub_6d41c384Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                                    else:
                                        if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                                            uint256(users[msg.sender].field_2560) = 0
                                            uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                                            if uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                                                revert with 0, 'Zero payout'
                                            uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                                            total_withdraw = uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                                            require ext_code.size(sub_6d41c384Address)
                                            call sub_6d41c384Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Withdraw((uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                                        else:
                                            uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                            uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                            if (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) <= 0:
                                                revert with 0, 'Zero payout'
                                            uint256(users[msg.sender].field_2048) = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_2048)
                                            total_withdraw = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + total_withdraw
                                            require ext_code.size(sub_6d41c384Address)
                                            call sub_6d41c384Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Withdraw(((2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))), msg.sender);
                            else:
                                if ext_call.return_data[32] >= uint256(users[msg.sender].field_768) + uint256(users[msg.sender].field_512):
                                    uint256(users[msg.sender].field_768) = 0
                                    uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_768)
                                    if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                                        if uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                                            revert with 0, 'Zero payout'
                                        uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                                        total_withdraw = uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                                        require ext_code.size(sub_6d41c384Address)
                                        call sub_6d41c384Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit Withdraw((uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                                    else:
                                        if not uint256(users[msg.sender].field_2560):
                                            if uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                                                revert with 0, 'Zero payout'
                                            uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                                            total_withdraw = uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                                            require ext_code.size(sub_6d41c384Address)
                                            call sub_6d41c384Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Withdraw((uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                                        else:
                                            if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                                                uint256(users[msg.sender].field_2560) = 0
                                                uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                                                if uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                                                    revert with 0, 'Zero payout'
                                                uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                                                total_withdraw = uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                                                require ext_code.size(sub_6d41c384Address)
                                                call sub_6d41c384Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                emit Withdraw((uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                                            else:
                                                uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                                uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                                if (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_768) <= 0:
                                                    revert with 0, 'Zero payout'
                                                uint256(users[msg.sender].field_2048) = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_768) + uint256(users[msg.sender].field_2048)
                                                total_withdraw = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_768) + total_withdraw
                                                require ext_code.size(sub_6d41c384Address)
                                                call sub_6d41c384Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_768)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                emit Withdraw(((2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_768)), msg.sender);
                                else:
                                    uint256(users[msg.sender].field_768) = uint256(users[msg.sender].field_768) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                    uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                    if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                                        if (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) <= 0:
                                            revert with 0, 'Zero payout'
                                        uint256(users[msg.sender].field_2048) = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_2048)
                                        total_withdraw = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + total_withdraw
                                        require ext_code.size(sub_6d41c384Address)
                                        call sub_6d41c384Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit Withdraw(((2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))), msg.sender);
                                    else:
                                        if not uint256(users[msg.sender].field_2560):
                                            if (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) <= 0:
                                                revert with 0, 'Zero payout'
                                            uint256(users[msg.sender].field_2048) = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_2048)
                                            total_withdraw = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + total_withdraw
                                            require ext_code.size(sub_6d41c384Address)
                                            call sub_6d41c384Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Withdraw(((2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))), msg.sender);
                                        else:
                                            if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                                                uint256(users[msg.sender].field_2560) = 0
                                                uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                                                if uint256(users[msg.sender].field_2560) + (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) <= 0:
                                                    revert with 0, 'Zero payout'
                                                uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_2048)
                                                total_withdraw = uint256(users[msg.sender].field_2560) + (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + total_withdraw
                                                require ext_code.size(sub_6d41c384Address)
                                                call sub_6d41c384Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, uint256(users[msg.sender].field_2560) + (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                emit Withdraw((uint256(users[msg.sender].field_2560) + (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))), msg.sender);
                                            else:
                                                uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                                uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                                if (3 * ext_call.return_data[32]) - (3 * uint256(users[msg.sender].field_512)) <= 0:
                                                    revert with 0, 'Zero payout'
                                                uint256(users[msg.sender].field_2048) = (3 * ext_call.return_data[32]) - (3 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_2048)
                                                total_withdraw = (3 * ext_call.return_data[32]) - (3 * uint256(users[msg.sender].field_512)) + total_withdraw
                                                require ext_code.size(sub_6d41c384Address)
                                                call sub_6d41c384Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (3 * ext_call.return_data[32]) - (3 * uint256(users[msg.sender].field_512))
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                emit Withdraw(((3 * ext_call.return_data[32]) - (3 * uint256(users[msg.sender].field_512))), msg.sender);
                        if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                            emit LimitReached(uint256(users[msg.sender].field_512), msg.sender);
                if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                    if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                        if ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                            revert with 0, 'Zero payout'
                        uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                        total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                        require ext_code.size(sub_6d41c384Address)
                        call sub_6d41c384Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                    else:
                        if not uint256(users[msg.sender].field_2560):
                            if ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                            total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                            require ext_code.size(sub_6d41c384Address)
                            call sub_6d41c384Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                        else:
                            if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                                uint256(users[msg.sender].field_2560) = 0
                                uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                                if uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                                total_withdraw = uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                                require ext_code.size(sub_6d41c384Address)
                                call sub_6d41c384Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw((uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                            else:
                                uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                if (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[msg.sender].field_2048) = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_2048)
                                total_withdraw = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + total_withdraw
                                require ext_code.size(sub_6d41c384Address)
                                call sub_6d41c384Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw(((2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))), msg.sender);
                else:
                    if not uint256(users[msg.sender].field_768):
                        if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                            if ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                            total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                            require ext_code.size(sub_6d41c384Address)
                            call sub_6d41c384Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                        else:
                            if not uint256(users[msg.sender].field_2560):
                                if ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                                total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                                require ext_code.size(sub_6d41c384Address)
                                call sub_6d41c384Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                            else:
                                if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                                    uint256(users[msg.sender].field_2560) = 0
                                    uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                                    if uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                                    total_withdraw = uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                                    require ext_code.size(sub_6d41c384Address)
                                    call sub_6d41c384Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit Withdraw((uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                                else:
                                    uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                    uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                    if (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[msg.sender].field_2048) = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_2048)
                                    total_withdraw = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + total_withdraw
                                    require ext_code.size(sub_6d41c384Address)
                                    call sub_6d41c384Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit Withdraw(((2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))), msg.sender);
                    else:
                        if ext_call.return_data[32] >= uint256(users[msg.sender].field_768) + uint256(users[msg.sender].field_512):
                            uint256(users[msg.sender].field_768) = 0
                            uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_768)
                            if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                                if uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                                total_withdraw = uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                                require ext_code.size(sub_6d41c384Address)
                                call sub_6d41c384Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw((uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                            else:
                                if not uint256(users[msg.sender].field_2560):
                                    if uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                                    total_withdraw = uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                                    require ext_code.size(sub_6d41c384Address)
                                    call sub_6d41c384Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit Withdraw((uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                                else:
                                    if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                                        uint256(users[msg.sender].field_2560) = 0
                                        uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                                        if uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                                            revert with 0, 'Zero payout'
                                        uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                                        total_withdraw = uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                                        require ext_code.size(sub_6d41c384Address)
                                        call sub_6d41c384Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit Withdraw((uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                                    else:
                                        uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                        uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                        if (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_768) <= 0:
                                            revert with 0, 'Zero payout'
                                        uint256(users[msg.sender].field_2048) = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_768) + uint256(users[msg.sender].field_2048)
                                        total_withdraw = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_768) + total_withdraw
                                        require ext_code.size(sub_6d41c384Address)
                                        call sub_6d41c384Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_768)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit Withdraw(((2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_768)), msg.sender);
                        else:
                            uint256(users[msg.sender].field_768) = uint256(users[msg.sender].field_768) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                            uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                            if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                                if (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[msg.sender].field_2048) = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_2048)
                                total_withdraw = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + total_withdraw
                                require ext_code.size(sub_6d41c384Address)
                                call sub_6d41c384Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw(((2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))), msg.sender);
                            else:
                                if not uint256(users[msg.sender].field_2560):
                                    if (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[msg.sender].field_2048) = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_2048)
                                    total_withdraw = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + total_withdraw
                                    require ext_code.size(sub_6d41c384Address)
                                    call sub_6d41c384Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit Withdraw(((2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))), msg.sender);
                                else:
                                    if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                                        uint256(users[msg.sender].field_2560) = 0
                                        uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                                        if uint256(users[msg.sender].field_2560) + (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) <= 0:
                                            revert with 0, 'Zero payout'
                                        uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_2048)
                                        total_withdraw = uint256(users[msg.sender].field_2560) + (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + total_withdraw
                                        require ext_code.size(sub_6d41c384Address)
                                        call sub_6d41c384Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, uint256(users[msg.sender].field_2560) + (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit Withdraw((uint256(users[msg.sender].field_2560) + (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))), msg.sender);
                                    else:
                                        uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                        uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                        if (3 * ext_call.return_data[32]) - (3 * uint256(users[msg.sender].field_512)) <= 0:
                                            revert with 0, 'Zero payout'
                                        uint256(users[msg.sender].field_2048) = (3 * ext_call.return_data[32]) - (3 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_2048)
                                        total_withdraw = (3 * ext_call.return_data[32]) - (3 * uint256(users[msg.sender].field_512)) + total_withdraw
                                        require ext_code.size(sub_6d41c384Address)
                                        call sub_6d41c384Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (3 * ext_call.return_data[32]) - (3 * uint256(users[msg.sender].field_512))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit Withdraw(((3 * ext_call.return_data[32]) - (3 * uint256(users[msg.sender].field_512))), msg.sender);
                if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                    emit LimitReached(uint256(users[msg.sender].field_512), msg.sender);
            if 1 == bool(uint8(users[users[address(msg.sender)].field_0].field_3328)):
                idx = 0
                s = 0
                t = users[address(msg.sender)].field_0
                while uint16(idx) < stor4.length:
                    if address(t):
                        if uint256(users[address(t)].field_256) >= uint16(idx + 1):
                            require uint16(idx) < stor4.length
                            if 5 > uint256(users[address(s)].field_3072):
                                uint256(users[address(t)].field_2560) += (ext_call.return_data[32] * stor('array', ('mask_shl', 11, 5, -5, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]) - (uint256(users[msg.sender].field_512) * stor('array', ('mask_shl', 11, 5, -5, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]) / 100
                            else:
                                uint256(users[address(t)].field_2560) += ext_call.return_data[32] - uint256(users[msg.sender].field_512) / 100
                        mem[0] = address(t)
                        mem[32] = 2
                        idx = idx + 1
                        s = t
                        t = users[address(t)].field_0
                        continue 
                    if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                        if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                            if ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                            total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                            require ext_code.size(sub_6d41c384Address)
                            call sub_6d41c384Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                        else:
                            if not uint256(users[msg.sender].field_2560):
                                if ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                                total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                                require ext_code.size(sub_6d41c384Address)
                                call sub_6d41c384Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                            else:
                                if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                                    uint256(users[msg.sender].field_2560) = 0
                                    uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                                    if uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                                    total_withdraw = uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                                    require ext_code.size(sub_6d41c384Address)
                                    call sub_6d41c384Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit Withdraw((uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                                else:
                                    uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                    uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                    if (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[msg.sender].field_2048) = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_2048)
                                    total_withdraw = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + total_withdraw
                                    require ext_code.size(sub_6d41c384Address)
                                    call sub_6d41c384Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit Withdraw(((2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))), msg.sender);
                    else:
                        if not uint256(users[msg.sender].field_768):
                            if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                                if ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                                total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                                require ext_code.size(sub_6d41c384Address)
                                call sub_6d41c384Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                            else:
                                if not uint256(users[msg.sender].field_2560):
                                    if ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                                    total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                                    require ext_code.size(sub_6d41c384Address)
                                    call sub_6d41c384Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                                else:
                                    if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                                        uint256(users[msg.sender].field_2560) = 0
                                        uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                                        if uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                                            revert with 0, 'Zero payout'
                                        uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                                        total_withdraw = uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                                        require ext_code.size(sub_6d41c384Address)
                                        call sub_6d41c384Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit Withdraw((uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                                    else:
                                        uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                        uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                        if (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) <= 0:
                                            revert with 0, 'Zero payout'
                                        uint256(users[msg.sender].field_2048) = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_2048)
                                        total_withdraw = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + total_withdraw
                                        require ext_code.size(sub_6d41c384Address)
                                        call sub_6d41c384Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit Withdraw(((2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))), msg.sender);
                        else:
                            if ext_call.return_data[32] >= uint256(users[msg.sender].field_768) + uint256(users[msg.sender].field_512):
                                uint256(users[msg.sender].field_768) = 0
                                uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_768)
                                if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                                    if uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                                    total_withdraw = uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                                    require ext_code.size(sub_6d41c384Address)
                                    call sub_6d41c384Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit Withdraw((uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                                else:
                                    if not uint256(users[msg.sender].field_2560):
                                        if uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                                            revert with 0, 'Zero payout'
                                        uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                                        total_withdraw = uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                                        require ext_code.size(sub_6d41c384Address)
                                        call sub_6d41c384Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit Withdraw((uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                                    else:
                                        if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                                            uint256(users[msg.sender].field_2560) = 0
                                            uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                                            if uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                                                revert with 0, 'Zero payout'
                                            uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                                            total_withdraw = uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                                            require ext_code.size(sub_6d41c384Address)
                                            call sub_6d41c384Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Withdraw((uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                                        else:
                                            uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                            uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                            if (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_768) <= 0:
                                                revert with 0, 'Zero payout'
                                            uint256(users[msg.sender].field_2048) = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_768) + uint256(users[msg.sender].field_2048)
                                            total_withdraw = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_768) + total_withdraw
                                            require ext_code.size(sub_6d41c384Address)
                                            call sub_6d41c384Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_768)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Withdraw(((2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_768)), msg.sender);
                            else:
                                uint256(users[msg.sender].field_768) = uint256(users[msg.sender].field_768) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                                    if (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[msg.sender].field_2048) = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_2048)
                                    total_withdraw = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + total_withdraw
                                    require ext_code.size(sub_6d41c384Address)
                                    call sub_6d41c384Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit Withdraw(((2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))), msg.sender);
                                else:
                                    if not uint256(users[msg.sender].field_2560):
                                        if (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) <= 0:
                                            revert with 0, 'Zero payout'
                                        uint256(users[msg.sender].field_2048) = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_2048)
                                        total_withdraw = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + total_withdraw
                                        require ext_code.size(sub_6d41c384Address)
                                        call sub_6d41c384Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit Withdraw(((2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))), msg.sender);
                                    else:
                                        if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                                            uint256(users[msg.sender].field_2560) = 0
                                            uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                                            if uint256(users[msg.sender].field_2560) + (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) <= 0:
                                                revert with 0, 'Zero payout'
                                            uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_2048)
                                            total_withdraw = uint256(users[msg.sender].field_2560) + (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + total_withdraw
                                            require ext_code.size(sub_6d41c384Address)
                                            call sub_6d41c384Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, uint256(users[msg.sender].field_2560) + (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Withdraw((uint256(users[msg.sender].field_2560) + (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))), msg.sender);
                                        else:
                                            uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                            uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                            if (3 * ext_call.return_data[32]) - (3 * uint256(users[msg.sender].field_512)) <= 0:
                                                revert with 0, 'Zero payout'
                                            uint256(users[msg.sender].field_2048) = (3 * ext_call.return_data[32]) - (3 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_2048)
                                            total_withdraw = (3 * ext_call.return_data[32]) - (3 * uint256(users[msg.sender].field_512)) + total_withdraw
                                            require ext_code.size(sub_6d41c384Address)
                                            call sub_6d41c384Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (3 * ext_call.return_data[32]) - (3 * uint256(users[msg.sender].field_512))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit Withdraw(((3 * ext_call.return_data[32]) - (3 * uint256(users[msg.sender].field_512))), msg.sender);
                    if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                        emit LimitReached(uint256(users[msg.sender].field_512), msg.sender);
            if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                    if ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                        revert with 0, 'Zero payout'
                    uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                    total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                    require ext_code.size(sub_6d41c384Address)
                    call sub_6d41c384Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                else:
                    if not uint256(users[msg.sender].field_2560):
                        if ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                            revert with 0, 'Zero payout'
                        uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                        total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                        require ext_code.size(sub_6d41c384Address)
                        call sub_6d41c384Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                    else:
                        if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                            uint256(users[msg.sender].field_2560) = 0
                            uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                            if uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                            total_withdraw = uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                            require ext_code.size(sub_6d41c384Address)
                            call sub_6d41c384Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit Withdraw((uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                        else:
                            uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                            uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                            if (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[msg.sender].field_2048) = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_2048)
                            total_withdraw = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + total_withdraw
                            require ext_code.size(sub_6d41c384Address)
                            call sub_6d41c384Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit Withdraw(((2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))), msg.sender);
            else:
                if not uint256(users[msg.sender].field_768):
                    if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                        if ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                            revert with 0, 'Zero payout'
                        uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                        total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                        require ext_code.size(sub_6d41c384Address)
                        call sub_6d41c384Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                    else:
                        if not uint256(users[msg.sender].field_2560):
                            if ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[msg.sender].field_2048) = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                            total_withdraw = ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                            require ext_code.size(sub_6d41c384Address)
                            call sub_6d41c384Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit Withdraw((ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                        else:
                            if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                                uint256(users[msg.sender].field_2560) = 0
                                uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                                if uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                                total_withdraw = uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                                require ext_code.size(sub_6d41c384Address)
                                call sub_6d41c384Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw((uint256(users[msg.sender].field_2560) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                            else:
                                uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                if (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[msg.sender].field_2048) = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_2048)
                                total_withdraw = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + total_withdraw
                                require ext_code.size(sub_6d41c384Address)
                                call sub_6d41c384Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw(((2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))), msg.sender);
                else:
                    if ext_call.return_data[32] >= uint256(users[msg.sender].field_768) + uint256(users[msg.sender].field_512):
                        uint256(users[msg.sender].field_768) = 0
                        uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_768)
                        if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                            if uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                            total_withdraw = uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                            require ext_code.size(sub_6d41c384Address)
                            call sub_6d41c384Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit Withdraw((uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                        else:
                            if not uint256(users[msg.sender].field_2560):
                                if uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                                total_withdraw = uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                                require ext_code.size(sub_6d41c384Address)
                                call sub_6d41c384Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw((uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                            else:
                                if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                                    uint256(users[msg.sender].field_2560) = 0
                                    uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                                    if uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + uint256(users[msg.sender].field_2048)
                                    total_withdraw = uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512) + total_withdraw
                                    require ext_code.size(sub_6d41c384Address)
                                    call sub_6d41c384Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit Withdraw((uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_768) + ext_call.return_data[32] - uint256(users[msg.sender].field_512)), msg.sender);
                                else:
                                    uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                    uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                    if (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_768) <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[msg.sender].field_2048) = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_768) + uint256(users[msg.sender].field_2048)
                                    total_withdraw = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_768) + total_withdraw
                                    require ext_code.size(sub_6d41c384Address)
                                    call sub_6d41c384Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_768)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit Withdraw(((2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_768)), msg.sender);
                    else:
                        uint256(users[msg.sender].field_768) = uint256(users[msg.sender].field_768) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                        uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                        if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
                            if (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) <= 0:
                                revert with 0, 'Zero payout'
                            uint256(users[msg.sender].field_2048) = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_2048)
                            total_withdraw = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + total_withdraw
                            require ext_code.size(sub_6d41c384Address)
                            call sub_6d41c384Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit Withdraw(((2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))), msg.sender);
                        else:
                            if not uint256(users[msg.sender].field_2560):
                                if (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) <= 0:
                                    revert with 0, 'Zero payout'
                                uint256(users[msg.sender].field_2048) = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_2048)
                                total_withdraw = (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + total_withdraw
                                require ext_code.size(sub_6d41c384Address)
                                call sub_6d41c384Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw(((2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))), msg.sender);
                            else:
                                if ext_call.return_data[32] >= uint256(users[msg.sender].field_2560) + uint256(users[msg.sender].field_512):
                                    uint256(users[msg.sender].field_2560) = 0
                                    uint256(users[msg.sender].field_512) += uint256(users[msg.sender].field_2560)
                                    if uint256(users[msg.sender].field_2560) + (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[msg.sender].field_2048) = uint256(users[msg.sender].field_2560) + (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_2048)
                                    total_withdraw = uint256(users[msg.sender].field_2560) + (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512)) + total_withdraw
                                    require ext_code.size(sub_6d41c384Address)
                                    call sub_6d41c384Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, uint256(users[msg.sender].field_2560) + (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit Withdraw((uint256(users[msg.sender].field_2560) + (2 * ext_call.return_data[32]) - (2 * uint256(users[msg.sender].field_512))), msg.sender);
                                else:
                                    uint256(users[msg.sender].field_2560) = uint256(users[msg.sender].field_2560) - ext_call.return_data[32] + uint256(users[msg.sender].field_512)
                                    uint256(users[msg.sender].field_512) = ext_call.return_data[32]
                                    if (3 * ext_call.return_data[32]) - (3 * uint256(users[msg.sender].field_512)) <= 0:
                                        revert with 0, 'Zero payout'
                                    uint256(users[msg.sender].field_2048) = (3 * ext_call.return_data[32]) - (3 * uint256(users[msg.sender].field_512)) + uint256(users[msg.sender].field_2048)
                                    total_withdraw = (3 * ext_call.return_data[32]) - (3 * uint256(users[msg.sender].field_512)) + total_withdraw
                                    require ext_code.size(sub_6d41c384Address)
                                    call sub_6d41c384Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (3 * ext_call.return_data[32]) - (3 * uint256(users[msg.sender].field_512))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit Withdraw(((3 * ext_call.return_data[32]) - (3 * uint256(users[msg.sender].field_512))), msg.sender);
    if ext_call.return_data[32] <= uint256(users[msg.sender].field_512):
        emit LimitReached(uint256(users[msg.sender].field_512), msg.sender);
}



}
