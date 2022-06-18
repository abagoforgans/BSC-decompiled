contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0


address owner;
mapping of struct roleAdmin;
uint256 stor2;
uint256 rate;
uint256 tokensForSale;
uint8 stor5;
uint128 stor5; offset 168
address fundTokenAddress; offset 8
uint256 sub_7624388e;
address fundsReceiverAddress;
array of struct stor8;
uint256 tokensSold;
uint256 raised;
uint256 participants;
mapping of uint256 balances;
mapping of uint256 contributed;
uint256 sub_2b888f69;
uint256 sub_75c33e0b;

function sub_00fed700(?) {
    return bool(uint8(stor5.field_0))
}

function tokensForSale() {
    return tokensForSale
}

function fundsReceiver() {
    return fundsReceiverAddress
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function balances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balances[arg1]
}

function sub_2b888f69(?) {
    return sub_2b888f69
}

function rate() {
    return rate
}

function fundToken() {
    return fundTokenAddress
}

function tokensSold() {
    return tokensSold
}

function participants() {
    return participants
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balances[address(arg1)]
}

function sub_75c33e0b(?) {
    return sub_75c33e0b
}

function sub_7624388e(?) {
    return sub_7624388e
}

function owner() {
    return owner
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function contributed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return contributed[arg1]
}

function raised() {
    return raised
}

function calculatePurchaseAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not rate:
        revert with 0, 18
    return (arg1 / rate)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not roleAdmin[0][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    rate = arg1
}

function setTokensForSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not roleAdmin[0][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    tokensForSale = arg1
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_297ab1bd(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if not roleAdmin[0][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    fundsReceiverAddress = address(arg1)
    emit FundsReceiverChanged(address(arg1));
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

function setFundToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if not roleAdmin[0][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    uint8(stor5.field_0) = uint8(bool(arg1))
    fundTokenAddress = arg1
    Mask(88, 0, stor5.field_168) = Mask(88, 168, bool(arg1)) >> 168
    emit FundTokenChanged(arg1);
}

function withdrawBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not roleAdmin[0][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Withdrawable: amount should be greater than zero'
    call fundsReceiverAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buyTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor2 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 2
    emit Received(arg1, msg.sender);
    if msg.value <= 0:
        revert with 0, 'Sale: value is 0'
    if ext_code.size(msg.sender):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Contract intercation is not available for Public Sales'
    if msg.value <= 0:
        revert with 0, 'Expecting more than 0'
    if not rate:
        revert with 0, 18
    if msg.value / rate <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You probably expect to get more than 0'
    if msg.value / 100 > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
        revert with 0, 17
    call fundsReceiverAddress with:
       value 95 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TokensPurchased(msg.value, msg.value / rate, msg.sender);
    stor2 = 1
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

function withdrawAll() {
    if owner != msg.sender:
        if not roleAdmin[0][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    if eth.balance(this.address):
        call fundsReceiverAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if uint8(stor5.field_0):
        require ext_code.size(fundTokenAddress)
        staticcall fundTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            require ext_code.size(fundTokenAddress)
            staticcall fundTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(fundTokenAddress)
            call fundTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args fundsReceiverAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function id() {
    if bool(stor8.length):
        if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor8.length):
            if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor8.length):
                if 31 < uint255(stor8.length) * 0.5:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor8.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length), data=mem[128 len ceil32(uint255(stor8.length) * 0.5)])
                mem[128] = 256 * stor8.length.field_8
        else:
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 0, 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length), data=mem[128 len ceil32(uint255(stor8.length) * 0.5)])
                mem[128] = 256 * stor8.length.field_8
        mem[ceil32(uint255(stor8.length) * 0.5) + 192 len ceil32(uint255(stor8.length) * 0.5)] = mem[128 len ceil32(uint255(stor8.length) * 0.5)]
        if ceil32(uint255(stor8.length) * 0.5) > uint255(stor8.length) * 0.5:
            mem[ceil32(uint255(stor8.length) * 0.5) + (uint255(stor8.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor8.length), data=mem[128 len ceil32(uint255(stor8.length) * 0.5)], mem[(2 * ceil32(uint255(stor8.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor8.length) * 0.5)]), 
    if bool(stor8.length) == stor8.length.field_1 < 32:
        revert with 0, 34
    if bool(stor8.length):
        if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor8.length):
            if 31 < uint255(stor8.length) * 0.5:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while (uint255(stor8.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    else:
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 0, 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
    if ceil32(stor8.length.field_1) > stor8.length.field_1:
        mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
    return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        emit Received(msg.value, msg.sender);
        if msg.value <= 0:
            revert with 0, 'Sale: value is 0'
        if ext_code.size(msg.sender):
            revert with 0, 'Contract intercation is not available for Public Sales'
        if msg.value <= 0:
            revert with 0, 'Expecting more than 0'
        if not rate:
            revert with 0, 18
        if msg.value / rate <= 0:
            revert with 0, 'You probably expect to get more than 0'
        if msg.value / 100 > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
            revert with 0, 17
        call fundsReceiverAddress with:
           value 95 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit TokensPurchased(msg.value, msg.value / rate, msg.sender);
    else:
        if unknown_0x6c4470fb(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x2c4e722e(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x248a9ca3(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x00fed700(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return bool(uint8(stor5.field_0))
                    if uint32(call.func_hash) >> 224 != supportsInterface(bytes4 arg1):
                        if unknown_0x12aef8c3(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return tokensForSale
                        require unknown_0x23c7e09c(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return fundsReceiverAddress
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
                if unknown_0x27e235e3(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return balances[arg1]
                if uint32(call.func_hash) >> 224 != unknown_0x297ab1bd(?????):
                    require unknown_0x2b888f69(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return sub_2b888f69
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    if not roleAdmin[0][address(msg.sender)].field_0:
                        revert with 0, 'Adminable: caller is not the owner or admin'
                fundsReceiverAddress = address(arg1)
                emit FundsReceiverChanged(address(arg1));
            else:
                if unknown_0x36568abe(?????) <= uint32(call.func_hash) >> 224:
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
                        if uint32(call.func_hash) >> 224 != unknown_0x491ce4d0(?????):
                            if unknown_0x50adcdb7(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return fundTokenAddress
                            require unknown_0x518ab2a8(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return tokensSold
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            if not roleAdmin[0][address(msg.sender)].field_0:
                                revert with 0, 'Adminable: caller is not the owner or admin'
                        uint8(stor5.field_0) = uint8(bool(address(arg1)))
                        fundTokenAddress = address(arg1)
                        Mask(88, 0, stor5.field_168) = Mask(88, 168, bool(address(arg1))) >> 168
                        emit FundTokenChanged(address(arg1));
                else:
                    if unknown_0x2c4e722e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return rate
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
                    if unknown_0x34fcf437(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            if not roleAdmin[0][address(msg.sender)].field_0:
                                revert with 0, 'Adminable: caller is not the owner or admin'
                        rate = arg1
                    else:
                        require unknown_0x3610724e(?????) == uint32(call.func_hash) >> 224
                        require calldata.size - 4 >= 32
                        if stor2 == 2:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        stor2 = 2
                        emit Received(arg1, msg.sender);
                        if msg.value <= 0:
                            revert with 0, 'Sale: value is 0'
                        if ext_code.size(msg.sender):
                            revert with 0, 'Contract intercation is not available for Public Sales'
                        if msg.value <= 0:
                            revert with 0, 'Expecting more than 0'
                        if not rate:
                            revert with 0, 18
                        if msg.value / rate <= 0:
                            revert with 0, 'You probably expect to get more than 0'
                        if msg.value / 100 > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                            revert with 0, 17
                        call fundsReceiverAddress with:
                           value 95 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit TokensPurchased(msg.value, msg.value / rate, msg.sender);
                        stor2 = 1
        else:
            if unknown_0x995c5e9d(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xd547741f(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xd547741f(?????) == uint32(call.func_hash) >> 224:
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
                    if unknown_0xda76d5cd(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            if not roleAdmin[0][address(msg.sender)].field_0:
                                revert with 0, 'Adminable: caller is not the owner or admin'
                        if arg1 <= 0:
                            revert with 0, 'Withdrawable: amount should be greater than zero'
                        call fundsReceiverAddress with:
                           value arg1 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if unknown_0xeea62217(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                if not roleAdmin[0][address(msg.sender)].field_0:
                                    revert with 0, 'Adminable: caller is not the owner or admin'
                            tokensForSale = arg1
                        else:
                            if unknown_0xf0ea4bfc(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return raised
                            require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if not address(arg1):
                                revert with 0, 'Ownable: new owner is the zero address'
                            owner = address(arg1)
                            emit OwnershipTransferred(owner, address(arg1));
                if unknown_0x995c5e9d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return contributed[arg1]
                if unknown_0xa217fddf(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 0
                if unknown_0xa6b02bc3(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if not rate:
                        revert with 0, 18
                    return (arg1 / rate)
                require unknown_0xaf640d0f(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                if bool(stor8.length):
                    if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor8.length):
                        if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor8.length):
                            if 31 < uint255(stor8.length) * 0.5:
                                mem[160] = uint256(stor8.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor8.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor8[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor8.length), data=mem[160 len ceil32(uint255(stor8.length) * 0.5)])
                            mem[160] = 256 * stor8.length.field_8
                    else:
                        if bool(stor8.length) == stor8.length.field_1 < 32:
                            revert with 0, 34
                        if stor8.length.field_1:
                            if 31 < stor8.length.field_1:
                                mem[160] = uint256(stor8.field_0)
                                idx = 160
                                s = 0
                                while stor8.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor8[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor8.length), data=mem[160 len ceil32(uint255(stor8.length) * 0.5)])
                            mem[160] = 256 * stor8.length.field_8
                    mem[ceil32(uint255(stor8.length) * 0.5) + 224 len ceil32(uint255(stor8.length) * 0.5)] = mem[160 len ceil32(uint255(stor8.length) * 0.5)]
                    if ceil32(uint255(stor8.length) * 0.5) > uint255(stor8.length) * 0.5:
                        mem[ceil32(uint255(stor8.length) * 0.5) + (uint255(stor8.length) * 0.5) + 224] = 0
                    return Array(len=2 * Mask(256, -1, stor8.length), data=mem[160 len ceil32(uint255(stor8.length) * 0.5)], mem[(2 * ceil32(uint255(stor8.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor8.length) * 0.5)]), 
                if bool(stor8.length) == stor8.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor8.length):
                    if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor8.length):
                        if 31 < uint255(stor8.length) * 0.5:
                            mem[160] = uint256(stor8.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor8.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor8[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor8.length % 128, data=mem[160 len ceil32(stor8.length.field_1)])
                        mem[160] = 256 * stor8.length.field_8
                else:
                    if bool(stor8.length) == stor8.length.field_1 < 32:
                        revert with 0, 34
                    if stor8.length.field_1:
                        if 31 < stor8.length.field_1:
                            mem[160] = uint256(stor8.field_0)
                            idx = 160
                            s = 0
                            while stor8.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor8[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor8.length % 128, data=mem[160 len ceil32(stor8.length.field_1)])
                        mem[160] = 256 * stor8.length.field_8
                mem[ceil32(stor8.length.field_1) + 224 len ceil32(stor8.length.field_1)] = mem[160 len ceil32(stor8.length.field_1)]
                if ceil32(stor8.length.field_1) > stor8.length.field_1:
                    mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 224] = 0
                return Array(len=stor8.length % 128, data=mem[160 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 224 len 2 * ceil32(stor8.length.field_1)]), 
            if unknown_0x7624388e(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x6c4470fb(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return participants
                if unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return balances[address(arg1)]
                if uint32(call.func_hash) >> 224 != unknown_0x715018a6(?????):
                    require unknown_0x75c33e0b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return sub_75c33e0b
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                owner = 0
                emit OwnershipTransferred(owner, 0);
            else:
                if unknown_0x7624388e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_7624388e
                if uint32(call.func_hash) >> 224 != unknown_0x853828b6(?????):
                    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return owner
                    require unknown_0x91d14854(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg2 == address(arg2)
                    return bool(roleAdmin[arg1][address(arg2)].field_0)
                require not msg.value
                if owner != msg.sender:
                    if not roleAdmin[0][address(msg.sender)].field_0:
                        revert with 0, 'Adminable: caller is not the owner or admin'
                if eth.balance(this.address):
                    call fundsReceiverAddress with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if uint8(stor5.field_0):
                    require ext_code.size(fundTokenAddress)
                    staticcall fundTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0:
                        require ext_code.size(fundTokenAddress)
                        staticcall fundTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(fundTokenAddress)
                        call fundTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args fundsReceiverAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
