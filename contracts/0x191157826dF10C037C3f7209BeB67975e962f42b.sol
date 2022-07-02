contract main {




// =====================  Runtime code  =====================


const sub_9d0180b8(?) = 0x62cdafb0605b9874beb13e1bc9707e69c7e7cecc4d9ac5fe6cd8d6605fe03f5b

const randomNum = sha3(block.timestamp + block.difficulty + block.gas_limit + block.number + (sha3(address(block.coinbase)) / block.timestamp) + (sha3(msg.sender) / block.timestamp))

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of struct roleAdmin;
address nftTokenAddress;
address sub_7cc42ebaAddress;
address sub_1d98b81aAddress;
address priceOracleAddress;
address sub_6a4aeeb8Address;
mapping of uint256 balances;
array of uint256 players;
mapping of uint8 stor158;
mapping of uint8 stor159;
address burnAddress;
uint256 sub_840feb57;
address stor162;
mapping of uint8 stor163;
uint8 stor164; offset 160
uint128 stor164; offset 160
address sub_c7d4f1cfAddress;

function sub_1d98b81a(?) {
    return sub_1d98b81aAddress
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function priceOracle() {
    return priceOracleAddress
}

function balances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balances[arg1]
}

function sub_40f2486c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return balances[address(arg1)], balances[address(arg1)] / 10^18
}

function sub_6a4aeeb8(?) {
    return sub_6a4aeeb8Address
}

function burnAddress() {
    return burnAddress
}

function sub_78359ed1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor158[arg1])
}

function sub_7cc42eba(?) {
    return sub_7cc42ebaAddress
}

function sub_840feb57(?) {
    return sub_840feb57
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_bd424ee7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor159[arg1])
}

function sub_c7d4f1cf(?) {
    return sub_c7d4f1cfAddress
}

function nftToken() {
    return nftTokenAddress
}

function sub_f0c1549d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor159[address(arg1)])
}

function players(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < players.length
    return players[arg1]
}

function sub_1ec147b1(?) {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Not admin'
    sub_840feb57 = arg1
    emit 0x44e2917e: arg1
}

function setRandom(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Not admin'
    stor162 = arg1
}

function sub_5cf31ce8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Not admin'
    sub_c7d4f1cfAddress = address(arg1)
}

function sub_6e02cfc3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Not admin'
    sub_6a4aeeb8Address = address(arg1)
}

function setBurnAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Not admin'
    burnAddress = arg1
    emit 0xdc5f4d59: arg1
}

function sub_fa20ede4(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Not admin'
    Mask(96, 0, stor164.field_160) = Mask(96, 0, bool(arg1))
}

function setPriceOracle(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Not admin'
    priceOracleAddress = arg1
    emit 0xcd39ca30: arg1
}

function sub_72301d05(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Not admin'
    sub_1d98b81aAddress = address(arg1)
    emit 0x9d337dc8: address(arg1)
}

function sub_b44f36b3(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Not admin'
    stor159[address(arg1)] = uint8(bool(arg2))
}

function sub_5cc25914(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Not admin'
    nftTokenAddress = address(arg1)
    emit UpdatedCharacterContract(address(arg1));
}

function sub_721e5f1d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Not admin'
    sub_7cc42ebaAddress = address(arg1)
    emit UpdatedTokenContract(address(arg1));
}

function sub_77548382(?) {
    staticcall nftTokenAddress.0x77548382 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_5d068156(?) {
    require calldata.size - 4 >= 32
    call nftTokenAddress.0x5d068156 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_d11ec7a9(?) {
    require calldata.size - 4 >= 32
    call nftTokenAddress.0xd11ec7a9 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_251849c4(?) {
    require calldata.size - 4 >= 64
    call nftTokenAddress.0x251849c4 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_fd3eb3fd(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    staticcall sub_6a4aeeb8Address.getPrice(uint8 arg1) with:
            gas gas_remaining wei
           args uint8(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
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

function sub_2464e26c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Not admin'
    if not roleAdmin[0x62cdafb0605b9874beb13e1bc9707e69c7e7cecc4d9ac5fe6cd8d6605fe03f5b][address(arg1)].field_0:
        roleAdmin[0x62cdafb0605b9874beb13e1bc9707e69c7e7cecc4d9ac5fe6cd8d6605fe03f5b][address(arg1)].field_0 = 1
        emit RoleGranted(0x62cdafb0605b9874beb13e1bc9707e69c7e7cecc4d9ac5fe6cd8d6605fe03f5b, address(arg1), msg.sender);
}

function sub_04bd0f97(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not roleAdmin[0x62cdafb0605b9874beb13e1bc9707e69c7e7cecc4d9ac5fe6cd8d6605fe03f5b][address(msg.sender)].field_0:
        revert with 0, 'Not reward adder'
    if arg2 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if balances[address(arg1)] > !(10000 * arg2):
        revert with 0, 17
    balances[address(arg1)] += 10000 * arg2
    emit 0x50dd0134: address(arg1), msg.sender, arg2
}

function sub_8b263fc7(?) {
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Not admin'
    staticcall sub_7cc42ebaAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_1d98b81aAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_1d98b81aAddress)
    call sub_1d98b81aAddress.0x3ea535ba with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9836d171(?) {
    require calldata.size - 4 >= 32
    staticcall priceOracleAddress.getTokenPrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call nftTokenAddress.0x1fd42e28 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10000)
}

function sub_318eae0c(?) {
    require calldata.size - 4 >= 32
    call nftTokenAddress.0x318eae0c with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall priceOracleAddress.getTokenPrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] / 10000
}

function getBaseReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    call nftTokenAddress.0x786aee6a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall priceOracleAddress.getTokenPrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] / 10000
}

function claimRewards() {
    if uint8(stor164.field_160):
        revert with 0, 'game is under maintenance'
    if stor159[msg.sender]:
        revert with 0, 'your account has been banned'
    if ext_code.size(msg.sender):
        revert with 0, 'msg.sender is not wallet'
    if not balances[msg.sender]:
        revert with 0, 'Insufficient balance'
    if not stor163[msg.sender]:
        stor163[msg.sender] = 1
    require ext_code.size(sub_1d98b81aAddress)
    call sub_1d98b81aAddress.0x3ea535ba with:
         gas gas_remaining wei
        args msg.sender, balances[msg.sender] / 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    balances[msg.sender] = 0
    emit ClaimedRewards(msg.sender, balances[msg.sender] / 10000);
}

function sub_21ee8b0c(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Not admin'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 159
        stor159[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function getHero(uint256 arg1) {
    require calldata.size - 4 >= 32
    staticcall nftTokenAddress.0x21d80111 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 352
    if not bool(ceil32(return_data.size) + 800 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[96] == ext_call.return_data[120 len 8]
    require ext_call.return_data[128] == ext_call.return_data[152 len 8]
    require ext_call.return_data[160] == ext_call.return_data[184 len 8]
    require ext_call.return_data[192] == ext_call.return_data[216 len 8]
    mem[ceil32(return_data.size) + 896] = ext_call.return_data[120 len 8]
    mem[ceil32(return_data.size) + 928] = ext_call.return_data[152 len 8]
    mem[ceil32(return_data.size) + 960] = ext_call.return_data[184 len 8]
    mem[ceil32(return_data.size) + 992] = ext_call.return_data[216 len 8]
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           mem[ceil32(return_data.size) + 896 len 128],
           ext_call.return_data[224],
           ext_call.return_data[256],
           ext_call.return_data[288],
           ext_call.return_data[320]
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    if not roleAdmin[0][address(msg.sender)].field_0:
        roleAdmin[0][address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    sub_7cc42ebaAddress = arg1
    priceOracleAddress = arg2
    nftTokenAddress = arg3
    sub_1d98b81aAddress = arg4
    burnAddress = arg5
    sub_6a4aeeb8Address = arg6
    sub_840feb57 = 70
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_82821369(?) {
    require calldata.size - 4 >= 32
    if uint8(stor164.field_160):
        revert with 0, 'game is under maintenance'
    if not priceOracleAddress:
        revert with 0, 'Price Oracle was not set yet'
    if stor159[msg.sender]:
        revert with 0, 'your account has been banned'
    if ext_code.size(msg.sender):
        revert with 0, 'msg.sender is not wallet'
    require ext_code.size(nftTokenAddress)
    call nftTokenAddress.0x779014e3 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall priceOracleAddress.getTokenPrice() with:
            gas gas_remaining wei
    require return_data.size >= 32
    call nftTokenAddress.getBuyBackPrice(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if balances[msg.sender] > !(ext_call.return_data[0] * ext_call.return_data[0] / 10000):
        revert with 0, 17
    balances[msg.sender] += ext_call.return_data[0] * ext_call.return_data[0] / 10000
    emit 0x83f07cda: msg.sender, arg1, ext_call.return_data[0] * ext_call.return_data[0] / 10000
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

function fight(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if uint8(stor164.field_160):
        revert with 0, 'game is under maintenance'
    if stor159[msg.sender]:
        revert with 0, 'your account has been banned'
    if ext_code.size(msg.sender):
        revert with 0, 'msg.sender is not wallet'
    require ext_code.size(stor162)
    call stor162.0x69393a77 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall stor162.getRandomSeed(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    require return_data.size >= 32
    call nftTokenAddress.0x87cc02bc with:
         gas gas_remaining wei
        args msg.sender, arg1, arg2, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    staticcall priceOracleAddress.getTokenPrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[64] and ext_call.return_data[0] > -1 / ext_call.return_data[64]:
        revert with 0, 17
    if balances[msg.sender] > !(ext_call.return_data[64] * ext_call.return_data[0] / 100):
        revert with 0, 17
    balances[msg.sender] += ext_call.return_data[64] * ext_call.return_data[0] / 100
    if not stor163[msg.sender]:
        stor163[msg.sender] = 1
    emit 0x505f4a3c: msg.sender, arg1, arg2, ext_call.return_data[64] * ext_call.return_data[0] / 100, ext_call.return_data[32], uint16(ext_call.return_data[0])
}

function sub_5fe7416b(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    staticcall nftTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        return 0
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = idx
        staticcall nftTokenAddress.0x2f745c59 with:
                gas gas_remaining wei
               args address(arg1), idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _33 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _35 = mem[_33]
        _36 = mem[64]
        mem[64] = mem[64] + 352
        mem[_36] = 0
        mem[_36 + 32] = 0
        mem[_36 + 64] = 0
        mem[_36 + 96] = 0
        mem[_36 + 128] = 0
        mem[_36 + 160] = 0
        mem[_36 + 192] = 0
        mem[_36 + 224] = 0
        mem[_36 + 256] = 0
        mem[_36 + 288] = 0
        mem[_36 + 320] = 0
        staticcall nftTokenAddress.0x21d80111 with:
                gas gas_remaining wei
               args _35
        mem[mem[64] len 352] = ext_call.return_data[0 len 352]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _39 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 352
        _40 = mem[64]
        if mem[64] + 352 < mem[64] or mem[64] + 352 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 352
        mem[_40] = mem[_39]
        mem[_40 + 32] = mem[_39 + 32]
        mem[_40 + 64] = mem[_39 + 64]
        require mem[_39 + 96] == mem[_39 + 120 len 8]
        mem[_40 + 96] = mem[_39 + 96]
        require mem[_39 + 128] == mem[_39 + 152 len 8]
        mem[_40 + 128] = mem[_39 + 128]
        require mem[_39 + 160] == mem[_39 + 184 len 8]
        mem[_40 + 160] = mem[_39 + 160]
        require mem[_39 + 192] == mem[_39 + 216 len 8]
        mem[_40 + 192] = mem[_39 + 192]
        mem[_40 + 224] = mem[_39 + 224]
        mem[_40 + 256] = mem[_39 + 256]
        mem[_40 + 288] = mem[_39 + 288]
        mem[_40 + 320] = mem[_39 + 320]
        if arg4 != mem[_40]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !s:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    return arg3 <= s
}

function sub_5ba31fdd(?) {
    require calldata.size - 4 >= 32
    if uint8(stor164.field_160):
        revert with 0, 'game is under maintenance'
    if stor159[msg.sender]:
        revert with 0, 'your account has been banned'
    if ext_code.size(msg.sender):
        revert with 0, 'msg.sender is not wallet'
    staticcall priceOracleAddress.getTokenPrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call nftTokenAddress.0x1fd42e28 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    staticcall sub_7cc42ebaAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0] / 10000:
        revert with 0, 'Insufficient Token balance'
    call nftTokenAddress.0x8de1c95b with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor163[msg.sender]:
        stor163[msg.sender] = 1
    call sub_7cc42ebaAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, ext_call.return_data[0] * ext_call.return_data[0] / 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    staticcall sub_7cc42ebaAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] * ext_call.return_data[0] / 10000 <= ext_call.return_data[0]:
        if ext_call.return_data[0] * ext_call.return_data[0] / 10000 and sub_840feb57 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10000:
            revert with 0, 17
        call sub_7cc42ebaAddress.0xa9059cbb with:
             gas gas_remaining wei
            args sub_1d98b81aAddress, ext_call.return_data[0] * ext_call.return_data[0] / 10000 * sub_840feb57 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0] * ext_call.return_data[0] / 10000 < ext_call.return_data[0] * ext_call.return_data[0] / 10000 * sub_840feb57 / 100:
            revert with 0, 17
        call sub_7cc42ebaAddress.0xa9059cbb with:
             gas gas_remaining wei
            args burnAddress, (ext_call.return_data[0] * ext_call.return_data[0] / 10000) - (ext_call.return_data[0] * ext_call.return_data[0] / 10000 * sub_840feb57 / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0xc180d2e2: msg.sender, arg1, ext_call.return_data[0]
}

function sub_5e9859fb(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if uint8(stor164.field_160):
        revert with 0, 'game is under maintenance'
    if stor159[msg.sender]:
        revert with 0, 'your account has been banned'
    if ext_code.size(msg.sender):
        revert with 0, 'msg.sender is not wallet'
    require ext_code.size(stor162)
    call stor162.0x69393a77 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall nftTokenAddress.0x77548382 with:
            gas gas_remaining wei
    require return_data.size >= 32
    call sub_6a4aeeb8Address.getQuality(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall sub_6a4aeeb8Address.getPrice(uint8 arg1) with:
            gas gas_remaining wei
           args uint8(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not priceOracleAddress:
        revert with 0, 'Price Oracle was not set yet'
    staticcall priceOracleAddress.getTokenPrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    staticcall sub_7cc42ebaAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0] / 10000:
        revert with 0, 'Insufficient token balance'
    if not block.timestamp:
        revert with 0, 18
    if block.timestamp > !block.difficulty:
        revert with 0, 17
    if block.timestamp + block.difficulty > !block.gas_limit:
        revert with 0, 17
    if block.timestamp + block.difficulty + block.gas_limit > !block.number:
        revert with 0, 17
    if block.timestamp + block.difficulty + block.gas_limit + block.number > !(sha3(block.coinbase) / block.timestamp):
        revert with 0, 17
    if block.timestamp + block.difficulty + block.gas_limit + block.number + (sha3(block.coinbase) / block.timestamp) > !(sha3(msg.sender) / block.timestamp):
        revert with 0, 17
    mem[(7 * ceil32(return_data.size)) + 268] = msg.sender
    mem[(7 * ceil32(return_data.size)) + 300] = sha3(block.timestamp + block.difficulty + block.gas_limit + block.number + (sha3(block.coinbase) / block.timestamp) + (sha3(msg.sender) / block.timestamp))
    mem[(7 * ceil32(return_data.size)) + 332] = ext_call.return_data[0]
    call nftTokenAddress.mint(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, sha3(block.timestamp + block.difficulty + block.gas_limit + block.number + (sha3(block.coinbase) / block.timestamp) + (sha3(msg.sender) / block.timestamp)), ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor163[msg.sender]:
        stor163[msg.sender] = 1
    mem[(8 * ceil32(return_data.size)) + 268] = msg.sender
    mem[(8 * ceil32(return_data.size)) + 300] = this.address
    mem[(8 * ceil32(return_data.size)) + 332] = ext_call.return_data[0] * ext_call.return_data[0] / 10000
    call sub_7cc42ebaAddress.0x23b872dd with:
         gas gas_remaining wei
        args mem[(8 * ceil32(return_data.size)) + 268 len ceil32(return_data.size) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    staticcall sub_7cc42ebaAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address, mem[(10 * ceil32(return_data.size)) + 300 len 5 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
        if sub_c7d4f1cfAddress:
            require ext_code.size(sub_c7d4f1cfAddress)
            call sub_c7d4f1cfAddress.openBox(address arg1) with:
                 gas gas_remaining wei
                args msg.sender, mem[(12 * ceil32(return_data.size)) + 300 len 9 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        emit 0x928ce126: msg.sender, ext_call.return_data[0], ext_call.return_data[0], mem[(12 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)]
    else:
        if ext_call.return_data[0] * ext_call.return_data[0] / 10000 and sub_840feb57 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10000:
            revert with 0, 17
        call sub_7cc42ebaAddress.0xa9059cbb with:
             gas gas_remaining wei
            args sub_1d98b81aAddress, ext_call.return_data[0] * ext_call.return_data[0] / 10000 * sub_840feb57 / 100, mem[(12 * ceil32(return_data.size)) + 332 len 9 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0] * ext_call.return_data[0] / 10000 < ext_call.return_data[0] * ext_call.return_data[0] / 10000 * sub_840feb57 / 100:
            revert with 0, 17
        call sub_7cc42ebaAddress.0xa9059cbb with:
             gas gas_remaining wei
            args burnAddress, (ext_call.return_data[0] * ext_call.return_data[0] / 10000) - (ext_call.return_data[0] * ext_call.return_data[0] / 10000 * sub_840feb57 / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if sub_c7d4f1cfAddress:
            require ext_code.size(sub_c7d4f1cfAddress)
            call sub_c7d4f1cfAddress.openBox(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        emit 0x928ce126: msg.sender, ext_call.return_data[0], ext_call.return_data[0]
}

function sub_65d50b37(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor163[address(arg1)]:
        return bool(stor163[address(arg1)])
    mem[0] = address(arg1)
    mem[32] = 156
    if balances[address(arg1)]:
        return bool(balances[address(arg1)])
    mem[100] = address(arg1)
    staticcall nftTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = idx
            staticcall nftTokenAddress.0x2f745c59 with:
                    gas gas_remaining wei
                   args address(arg1), idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _66 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _68 = mem[_66]
            _72 = mem[64]
            mem[64] = mem[64] + 352
            mem[_72] = 0
            mem[_72 + 32] = 0
            mem[_72 + 64] = 0
            mem[_72 + 96] = 0
            mem[_72 + 128] = 0
            mem[_72 + 160] = 0
            mem[_72 + 192] = 0
            mem[_72 + 224] = 0
            mem[_72 + 256] = 0
            mem[_72 + 288] = 0
            mem[_72 + 320] = 0
            staticcall nftTokenAddress.0x21d80111 with:
                    gas gas_remaining wei
                   args _68
            mem[mem[64] len 352] = ext_call.return_data[0 len 352]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _78 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 352
            _80 = mem[64]
            if mem[64] + 352 < mem[64] or mem[64] + 352 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 352
            mem[_80] = mem[_78]
            mem[_80 + 32] = mem[_78 + 32]
            mem[_80 + 64] = mem[_78 + 64]
            require mem[_78 + 96] == mem[_78 + 120 len 8]
            mem[_80 + 96] = mem[_78 + 96]
            require mem[_78 + 128] == mem[_78 + 152 len 8]
            mem[_80 + 128] = mem[_78 + 128]
            require mem[_78 + 160] == mem[_78 + 184 len 8]
            mem[_80 + 160] = mem[_78 + 160]
            require mem[_78 + 192] == mem[_78 + 216 len 8]
            mem[_80 + 192] = mem[_78 + 192]
            mem[_80 + 224] = mem[_78 + 224]
            mem[_80 + 256] = mem[_78 + 256]
            mem[_80 + 288] = mem[_78 + 288]
            mem[_80 + 320] = mem[_78 + 320]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _80
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 480
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 256] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 288] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 320] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 352] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 384] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 416] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 448] = 0
        mem[var23001] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
        s = var23001
        idx = var23002
        while idx - 1:
            mem[64] = mem[64] + 352
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 256] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 288] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 320] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 352] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 384] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 416] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 448] = 0
            mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = idx
            staticcall nftTokenAddress.0x2f745c59 with:
                    gas gas_remaining wei
                   args address(arg1), idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _139 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _141 = mem[_139]
            _142 = mem[64]
            mem[64] = mem[64] + 352
            mem[_142] = 0
            mem[_142 + 32] = 0
            mem[_142 + 64] = 0
            mem[_142 + 96] = 0
            mem[_142 + 128] = 0
            mem[_142 + 160] = 0
            mem[_142 + 192] = 0
            mem[_142 + 224] = 0
            mem[_142 + 256] = 0
            mem[_142 + 288] = 0
            mem[_142 + 320] = 0
            staticcall nftTokenAddress.0x21d80111 with:
                    gas gas_remaining wei
                   args _141
            mem[mem[64] len 352] = ext_call.return_data[0 len 352]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _145 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 352
            _146 = mem[64]
            if mem[64] + 352 < mem[64] or mem[64] + 352 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 352
            mem[_146] = mem[_145]
            mem[_146 + 32] = mem[_145 + 32]
            mem[_146 + 64] = mem[_145 + 64]
            require mem[_145 + 96] == mem[_145 + 120 len 8]
            mem[_146 + 96] = mem[_145 + 96]
            require mem[_145 + 128] == mem[_145 + 152 len 8]
            mem[_146 + 128] = mem[_145 + 128]
            require mem[_145 + 160] == mem[_145 + 184 len 8]
            mem[_146 + 160] = mem[_145 + 160]
            require mem[_145 + 192] == mem[_145 + 216 len 8]
            mem[_146 + 192] = mem[_145 + 192]
            mem[_146 + 224] = mem[_145 + 224]
            mem[_146 + 256] = mem[_145 + 256]
            mem[_146 + 288] = mem[_145 + 288]
            mem[_146 + 320] = mem[_145 + 320]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _146
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    mem[mem[64]] = mem[ceil32(return_data.size) + 96] > 0
    return memory
      from mem[64]
       len 32
}

function sub_07c99f4e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    staticcall nftTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = idx
            staticcall nftTokenAddress.0x2f745c59 with:
                    gas gas_remaining wei
                   args address(arg1), idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _84 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _86 = mem[_84]
            _97 = mem[64]
            mem[64] = mem[64] + 352
            mem[_97] = 0
            mem[_97 + 32] = 0
            mem[_97 + 64] = 0
            mem[_97 + 96] = 0
            mem[_97 + 128] = 0
            mem[_97 + 160] = 0
            mem[_97 + 192] = 0
            mem[_97 + 224] = 0
            mem[_97 + 256] = 0
            mem[_97 + 288] = 0
            mem[_97 + 320] = 0
            staticcall nftTokenAddress.0x21d80111 with:
                    gas gas_remaining wei
                   args _86
            mem[mem[64] len 352] = ext_call.return_data[0 len 352]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _107 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 352
            _116 = mem[64]
            if mem[64] + 352 < mem[64] or mem[64] + 352 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 352
            mem[_116] = mem[_107]
            mem[_116 + 32] = mem[_107 + 32]
            mem[_116 + 64] = mem[_107 + 64]
            require mem[_107 + 96] == mem[_107 + 120 len 8]
            mem[_116 + 96] = mem[_107 + 96]
            require mem[_107 + 128] == mem[_107 + 152 len 8]
            mem[_116 + 128] = mem[_107 + 128]
            require mem[_107 + 160] == mem[_107 + 184 len 8]
            mem[_116 + 160] = mem[_107 + 160]
            require mem[_107 + 192] == mem[_107 + 216 len 8]
            mem[_116 + 192] = mem[_107 + 192]
            mem[_116 + 224] = mem[_107 + 224]
            mem[_116 + 256] = mem[_107 + 256]
            mem[_116 + 288] = mem[_107 + 288]
            mem[_116 + 320] = mem[_107 + 320]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _116
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _81 = mem[64]
        mem[mem[64]] = 32
        _83 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = mem[64] + 64
        t = ceil32(return_data.size) + 128
        while idx < _83:
            _153 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_153 + 32]
            mem[s + 64] = mem[_153 + 64]
            mem[s + 96] = mem[_153 + 120 len 8]
            mem[s + 128] = mem[_153 + 152 len 8]
            mem[s + 160] = mem[_153 + 184 len 8]
            mem[s + 192] = mem[_153 + 216 len 8]
            mem[s + 224] = mem[_153 + 224]
            mem[s + 256] = mem[_153 + 256]
            mem[s + 288] = mem[_153 + 288]
            mem[s + 320] = mem[_153 + 320]
            idx = idx + 1
            s = s + 352
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _81 + (352 * _83) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 480
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 256] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 288] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 320] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 352] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 384] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 416] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 448] = 0
    mem[var19001] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    s = var19001
    idx = var19002
    while idx - 1:
        mem[64] = mem[64] + 352
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 256] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 288] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 320] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 352] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 384] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 416] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 448] = 0
        mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = idx
        staticcall nftTokenAddress.0x2f745c59 with:
                gas gas_remaining wei
               args address(arg1), idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _206 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _208 = mem[_206]
        _216 = mem[64]
        mem[64] = mem[64] + 352
        mem[_216] = 0
        mem[_216 + 32] = 0
        mem[_216 + 64] = 0
        mem[_216 + 96] = 0
        mem[_216 + 128] = 0
        mem[_216 + 160] = 0
        mem[_216 + 192] = 0
        mem[_216 + 224] = 0
        mem[_216 + 256] = 0
        mem[_216 + 288] = 0
        mem[_216 + 320] = 0
        staticcall nftTokenAddress.0x21d80111 with:
                gas gas_remaining wei
               args _208
        mem[mem[64] len 352] = ext_call.return_data[0 len 352]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _224 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 352
        _225 = mem[64]
        if mem[64] + 352 < mem[64] or mem[64] + 352 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 352
        mem[_225] = mem[_224]
        mem[_225 + 32] = mem[_224 + 32]
        mem[_225 + 64] = mem[_224 + 64]
        require mem[_224 + 96] == mem[_224 + 120 len 8]
        mem[_225 + 96] = mem[_224 + 96]
        require mem[_224 + 128] == mem[_224 + 152 len 8]
        mem[_225 + 128] = mem[_224 + 128]
        require mem[_224 + 160] == mem[_224 + 184 len 8]
        mem[_225 + 160] = mem[_224 + 160]
        require mem[_224 + 192] == mem[_224 + 216 len 8]
        mem[_225 + 192] = mem[_224 + 192]
        mem[_225 + 224] = mem[_224 + 224]
        mem[_225 + 256] = mem[_224 + 256]
        mem[_225 + 288] = mem[_224 + 288]
        mem[_225 + 320] = mem[_224 + 320]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(return_data.size) + 128] = _225
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _203 = mem[64]
    mem[mem[64]] = 32
    _205 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = mem[64] + 64
    t = ceil32(return_data.size) + 128
    while idx < _205:
        _238 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_238 + 32]
        mem[s + 64] = mem[_238 + 64]
        mem[s + 96] = mem[_238 + 120 len 8]
        mem[s + 128] = mem[_238 + 152 len 8]
        mem[s + 160] = mem[_238 + 184 len 8]
        mem[s + 192] = mem[_238 + 216 len 8]
        mem[s + 224] = mem[_238 + 224]
        mem[s + 256] = mem[_238 + 256]
        mem[s + 288] = mem[_238 + 288]
        mem[s + 320] = mem[_238 + 320]
        idx = idx + 1
        s = s + 352
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _203 + (352 * _205) + -mem[64] + 64
}

function sub_d9a1855c(?) {
    require calldata.size - 4 >= 64
    if uint8(stor164.field_160):
        revert with 0, 'game is under maintenance'
    if stor159[msg.sender]:
        revert with 0, 'your account has been banned'
    if ext_code.size(msg.sender):
        revert with 0, 'msg.sender is not wallet'
    mem[100] = arg1
    mem[132] = arg2
    staticcall nftTokenAddress.0x241a0620 with:
            gas gas_remaining wei
           args arg1, arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'not enough endurance to fight'
    mem[ceil32(return_data.size) + 100] = arg1
    staticcall nftTokenAddress.getQuality(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 100] = arg2
    mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    call nftTokenAddress.0x251849c4 with:
         gas gas_remaining wei
        args arg2, ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor162)
    call stor162.0x69393a77 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 96] = 0x6126b6d800000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
    mem[(4 * ceil32(return_data.size)) + 132] = uint8(ext_call.return_data[0])
    staticcall stor162.0x6126b6d8 with:
            gas gas_remaining wei
           args msg.sender, uint8(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _27 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require (4 * ceil32(return_data.size)) + return_data.size + 96 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _28 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
    mem[(6 * ceil32(return_data.size)) + 96] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    require _27 + (32 * _28) + 32 <= return_data.size
    mem[(6 * ceil32(return_data.size)) + 128 len ceil32(32 * _28)] = mem[(4 * ceil32(return_data.size)) + _27 + 128 len ceil32(32 * _28)]
    idx = 0
    s = 0
    while uint8(idx) < _28:
        if uint8(idx) >= _28:
            revert with 0, 50
        if mem[(32 * uint8(idx)) + (6 * ceil32(return_data.size)) + 128] % 100 > !ext_call.return_data[0]:
            revert with 0, 17
        if (mem[(32 * uint8(idx)) + (6 * ceil32(return_data.size)) + 128] % 100) + ext_call.return_data[0] <= 100:
            if uint8(idx) == 255:
                revert with 0, 17
            idx = uint8(idx) + 1
            s = s
            continue 
        if s > -2:
            revert with 0, 17
        if uint8(idx) == 255:
            revert with 0, 17
        idx = uint8(idx) + 1
        s = s + 1
        continue 
    mem[0] = msg.sender
    mem[32] = 163
    if stor163[msg.sender]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = arg2
        mem[mem[64] + 100] = s
        mem[mem[64] + 132] = ext_call.return_data[0]
        call nftTokenAddress.0x12b52b02 with:
             gas gas_remaining wei
            args msg.sender, arg1, arg2, s, ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _137 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _141 = mem[_137]
        staticcall priceOracleAddress.getTokenPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _145 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _149 = mem[_145]
        if not _141:
            if ext_call.return_data[0] > 0x3333333333333333333333333333333333333333333333333333333333333333:
                revert with 0, 17
            if mem[_145] and 5 * ext_call.return_data[0] > -1 / mem[_145]:
                revert with 0, 17
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = sub_1d98b81aAddress
            mem[mem[64] + 68] = 5 * _149 * ext_call.return_data[0] / 10000
            call sub_7cc42ebaAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, sub_1d98b81aAddress, 5 * _149 * ext_call.return_data[0] / 10000
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _155 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_155] == bool(mem[_155])
            emit 0xbace4a14: msg.sender, arg1, 5 * _149 * ext_call.return_data[0] / 10000, 0, ext_call.return_data[0], s
        else:
            if _141 and mem[_145] > -1 / _141:
                revert with 0, 17
            if balances[msg.sender] > !(_141 * mem[_145] / 100):
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 156
            balances[msg.sender] += _141 * _149 / 100
            if ext_call.return_data[0] > 0x3333333333333333333333333333333333333333333333333333333333333333:
                revert with 0, 17
            if _149 and 5 * ext_call.return_data[0] > -1 / _149:
                revert with 0, 17
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = sub_1d98b81aAddress
            mem[mem[64] + 68] = 5 * _149 * ext_call.return_data[0] / 10000
            call sub_7cc42ebaAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, sub_1d98b81aAddress, 5 * _149 * ext_call.return_data[0] / 10000
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _169 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_169] == bool(mem[_169])
            emit 0xbace4a14: msg.sender, arg1, 5 * _149 * ext_call.return_data[0] / 10000, _141 * _149 / 100, ext_call.return_data[0], s
    else:
        mem[0] = msg.sender
        mem[32] = 163
        stor163[msg.sender] = 1
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = arg2
        mem[mem[64] + 100] = s
        mem[mem[64] + 132] = ext_call.return_data[0]
        call nftTokenAddress.0x12b52b02 with:
             gas gas_remaining wei
            args msg.sender, arg1, arg2, s, ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _140 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _144 = mem[_140]
        staticcall priceOracleAddress.getTokenPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _148 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _150 = mem[_148]
        if not _144:
            if ext_call.return_data[0] > 0x3333333333333333333333333333333333333333333333333333333333333333:
                revert with 0, 17
            if mem[_148] and 5 * ext_call.return_data[0] > -1 / mem[_148]:
                revert with 0, 17
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = sub_1d98b81aAddress
            mem[mem[64] + 68] = 5 * _150 * ext_call.return_data[0] / 10000
            call sub_7cc42ebaAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, sub_1d98b81aAddress, 5 * _150 * ext_call.return_data[0] / 10000
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _159 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_159] == bool(mem[_159])
            emit 0xbace4a14: msg.sender, arg1, 5 * _150 * ext_call.return_data[0] / 10000, 0, ext_call.return_data[0], s
        else:
            if _144 and mem[_148] > -1 / _144:
                revert with 0, 17
            if balances[msg.sender] > !(_144 * mem[_148] / 100):
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 156
            balances[msg.sender] += _144 * _150 / 100
            if ext_call.return_data[0] > 0x3333333333333333333333333333333333333333333333333333333333333333:
                revert with 0, 17
            if _150 and 5 * ext_call.return_data[0] > -1 / _150:
                revert with 0, 17
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = sub_1d98b81aAddress
            mem[mem[64] + 68] = 5 * _150 * ext_call.return_data[0] / 10000
            call sub_7cc42ebaAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, sub_1d98b81aAddress, 5 * _150 * ext_call.return_data[0] / 10000
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _172 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_172] == bool(mem[_172])
            emit 0xbace4a14: msg.sender, arg1, 5 * _150 * ext_call.return_data[0] / 10000, _144 * _150 / 100, ext_call.return_data[0], s
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x70d5ae05(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x318eae0c(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x21ee8b0c(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x251849c4(?????) > uint32(call.func_hash) >> 224:
                        if uint32(call.func_hash) >> 224 != unknown_0x21ee8b0c(?????):
                            if uint32(call.func_hash) >> 224 != unknown_0x2464e26c(?????):
                                require unknown_0x248a9ca3(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                require calldata.size - 4 >= 32
                                return roleAdmin[cd[4]].field_256
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if not roleAdmin[0][address(msg.sender)].field_0:
                                revert with 0, 'Not admin'
                            if not roleAdmin[0x62cdafb0605b9874beb13e1bc9707e69c7e7cecc4d9ac5fe6cd8d6605fe03f5b][address(cd[4])].field_0:
                                roleAdmin[0x62cdafb0605b9874beb13e1bc9707e69c7e7cecc4d9ac5fe6cd8d6605fe03f5b][address(cd[4])].field_0 = 1
                                emit RoleGranted(0x62cdafb0605b9874beb13e1bc9707e69c7e7cecc4d9ac5fe6cd8d6605fe03f5b, address(cd[4]), msg.sender);
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] <= test266151307()
                            require calldata.size > cd[4] + 35
                            if ('cd', 4).length > test266151307():
                                revert with 0, 65
                            if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                                revert with 0, 65
                            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                            s = 160
                            idx = cd[4] + 36
                            while idx < cd[4] + (32 * ('cd', 4).length) + 36:
                                require cd[idx] == address(cd[idx])
                                mem[s] = cd[idx]
                                s = s + 32
                                idx = idx + 32
                                continue 
                            if not roleAdmin[0][address(msg.sender)].field_0:
                                revert with 0, 'Not admin'
                            idx = 0
                            while idx < ('cd', 4).length:
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                mem[0] = mem[(32 * idx) + 172 len 20]
                                mem[32] = 159
                                stor159[mem[(32 * idx) + 172 len 20]] = 1
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                    if unknown_0x251849c4(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        call nftTokenAddress.0x251849c4 with:
                             gas gas_remaining wei
                            args cd[4], cd[36]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    if unknown_0x2630c12f(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return priceOracleAddress
                    if unknown_0x27e235e3(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return balances[cd[4]]
                    require unknown_0x2f2ff15d(?????) == uint32(call.func_hash) >> 224
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
                    revert with 0, 32, 148, 'AccessControl: account ', mem[192 len 42], 8297, mem[320 len 66], 0, 0 >> 928, 0
                if unknown_0x150b7a02(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x150b7a02(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 128
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        require cd[100] <= test266151307()
                        require cd[100] + 35 < calldata.size
                        require ('cd', 100).length <= test266151307()
                        require cd[100] + ('cd', 100).length + 36 <= calldata.size
                        return 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    if unknown_0x1d98b81a(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_1d98b81aAddress
                    if unknown_0x1ec147b1(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if not roleAdmin[0][address(msg.sender)].field_0:
                            revert with 0, 'Not admin'
                        sub_840feb57 = cd[4]
                        emit 0x44e2917e: cd[4]
                    require unknown_0x21d80111(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    staticcall nftTokenAddress.0x21d80111 with:
                            gas gas_remaining wei
                           args cd[4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 352
                    if not bool(ceil32(return_data.size) + 832 <= test266151307()):
                        revert with 0, 65
                    require ext_call.return_data[96] == ext_call.return_data[120 len 8]
                    require ext_call.return_data[128] == ext_call.return_data[152 len 8]
                    require ext_call.return_data[160] == ext_call.return_data[184 len 8]
                    require ext_call.return_data[192] == ext_call.return_data[216 len 8]
                    mem[ceil32(return_data.size) + 928] = ext_call.return_data[120 len 8]
                    mem[ceil32(return_data.size) + 960] = ext_call.return_data[152 len 8]
                    mem[ceil32(return_data.size) + 992] = ext_call.return_data[184 len 8]
                    mem[ceil32(return_data.size) + 1024] = ext_call.return_data[216 len 8]
                    return ext_call.return_data[0], 
                           ext_call.return_data[32],
                           ext_call.return_data[64],
                           mem[ceil32(return_data.size) + 928 len 128],
                           ext_call.return_data[224],
                           ext_call.return_data[256],
                           ext_call.return_data[288],
                           ext_call.return_data[320]
                if supportsInterface(bytes4 arg1) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == Mask(32, 224, cd[4])
                    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, cd[4]):
                        return True
                    return (Mask(32, 224, cd[4]) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
                if unknown_0x04bd0f97(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    if not roleAdmin[0x62cdafb0605b9874beb13e1bc9707e69c7e7cecc4d9ac5fe6cd8d6605fe03f5b][address(msg.sender)].field_0:
                        revert with 0, 'Not reward adder'
                    if cd[36] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if balances[address(cd[4])] > !(10000 * cd[36]):
                        revert with 0, 17
                    balances[address(cd[4])] += 10000 * cd[36]
                    emit 0x50dd0134: address(cd[4]), msg.sender, cd[36]
                require unknown_0x07c99f4e(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                mem[132] = address(cd[4])
                staticcall nftTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[4])
                mem[128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > test266151307():
                    revert with 0, 65
                mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
                if not ext_call.return_data[0]:
                    idx = 0
                    while idx < ext_call.return_data[0]:
                        mem[mem[64] + 4] = address(cd[4])
                        mem[mem[64] + 36] = idx
                        staticcall nftTokenAddress.0x2f745c59 with:
                                gas gas_remaining wei
                               args address(cd[4]), idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _816 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _831 = mem[_816]
                        _857 = mem[64]
                        mem[64] = mem[64] + 352
                        mem[_857] = 0
                        mem[_857 + 32] = 0
                        mem[_857 + 64] = 0
                        mem[_857 + 96] = 0
                        mem[_857 + 128] = 0
                        mem[_857 + 160] = 0
                        mem[_857 + 192] = 0
                        mem[_857 + 224] = 0
                        mem[_857 + 256] = 0
                        mem[_857 + 288] = 0
                        mem[_857 + 320] = 0
                        staticcall nftTokenAddress.0x21d80111 with:
                                gas gas_remaining wei
                               args _831
                        mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _884 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 352
                        _903 = mem[64]
                        if mem[64] + 352 < mem[64] or mem[64] + 352 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + 352
                        mem[_903] = mem[_884]
                        mem[_903 + 32] = mem[_884 + 32]
                        mem[_903 + 64] = mem[_884 + 64]
                        require mem[_884 + 96] == mem[_884 + 120 len 8]
                        mem[_903 + 96] = mem[_884 + 96]
                        require mem[_884 + 128] == mem[_884 + 152 len 8]
                        mem[_903 + 128] = mem[_884 + 128]
                        require mem[_884 + 160] == mem[_884 + 184 len 8]
                        mem[_903 + 160] = mem[_884 + 160]
                        require mem[_884 + 192] == mem[_884 + 216 len 8]
                        mem[_903 + 192] = mem[_884 + 192]
                        mem[_903 + 224] = mem[_884 + 224]
                        mem[_903 + 256] = mem[_884 + 256]
                        mem[_903 + 288] = mem[_884 + 288]
                        mem[_903 + 320] = mem[_884 + 320]
                        if idx >= mem[ceil32(return_data.size) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(return_data.size) + 160] = _903
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _806 = mem[64]
                    mem[mem[64]] = 32
                    _815 = mem[ceil32(return_data.size) + 128]
                    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 128]
                    idx = 0
                    s = mem[64] + 64
                    t = ceil32(return_data.size) + 160
                    while idx < _815:
                        _1021 = mem[t]
                        mem[s] = mem[mem[t]]
                        mem[s + 32] = mem[_1021 + 32]
                        mem[s + 64] = mem[_1021 + 64]
                        mem[s + 96] = mem[_1021 + 120 len 8]
                        mem[s + 128] = mem[_1021 + 152 len 8]
                        mem[s + 160] = mem[_1021 + 184 len 8]
                        mem[s + 192] = mem[_1021 + 216 len 8]
                        mem[s + 224] = mem[_1021 + 224]
                        mem[s + 256] = mem[_1021 + 256]
                        mem[s + 288] = mem[_1021 + 288]
                        mem[s + 320] = mem[_1021 + 320]
                        idx = idx + 1
                        s = s + 352
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _806 + (352 * _815) + -mem[64] + 64
                mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 512
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 0
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 0
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = 0
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 256] = 0
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 288] = 0
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 320] = 0
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 352] = 0
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 384] = 0
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 416] = 0
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 448] = 0
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 480] = 0
                mem[var27001] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
                s = var27001
                idx = var27002
                while idx - 1:
                    mem[64] = mem[64] + 352
                    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 0
                    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 0
                    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = 0
                    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 256] = 0
                    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 288] = 0
                    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 320] = 0
                    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 352] = 0
                    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 384] = 0
                    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 416] = 0
                    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 448] = 0
                    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 480] = 0
                    mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
                    s = s + 32
                    idx = idx - 1
                    continue 
                idx = 0
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = idx
                    staticcall nftTokenAddress.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(cd[4]), idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1214 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1223 = mem[_1214]
                    _1236 = mem[64]
                    mem[64] = mem[64] + 352
                    mem[_1236] = 0
                    mem[_1236 + 32] = 0
                    mem[_1236 + 64] = 0
                    mem[_1236 + 96] = 0
                    mem[_1236 + 128] = 0
                    mem[_1236 + 160] = 0
                    mem[_1236 + 192] = 0
                    mem[_1236 + 224] = 0
                    mem[_1236 + 256] = 0
                    mem[_1236 + 288] = 0
                    mem[_1236 + 320] = 0
                    staticcall nftTokenAddress.0x21d80111 with:
                            gas gas_remaining wei
                           args _1223
                    mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1255 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 352
                    _1265 = mem[64]
                    if mem[64] + 352 < mem[64] or mem[64] + 352 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + 352
                    mem[_1265] = mem[_1255]
                    mem[_1265 + 32] = mem[_1255 + 32]
                    mem[_1265 + 64] = mem[_1255 + 64]
                    require mem[_1255 + 96] == mem[_1255 + 120 len 8]
                    mem[_1265 + 96] = mem[_1255 + 96]
                    require mem[_1255 + 128] == mem[_1255 + 152 len 8]
                    mem[_1265 + 128] = mem[_1255 + 128]
                    require mem[_1255 + 160] == mem[_1255 + 184 len 8]
                    mem[_1265 + 160] = mem[_1255 + 160]
                    require mem[_1255 + 192] == mem[_1255 + 216 len 8]
                    mem[_1265 + 192] = mem[_1255 + 192]
                    mem[_1265 + 224] = mem[_1255 + 224]
                    mem[_1265 + 256] = mem[_1255 + 256]
                    mem[_1265 + 288] = mem[_1255 + 288]
                    mem[_1265 + 320] = mem[_1255 + 320]
                    if idx >= mem[ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(return_data.size) + 160] = _1265
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _1209 = mem[64]
                mem[mem[64]] = 32
                _1213 = mem[ceil32(return_data.size) + 128]
                mem[mem[64] + 32] = mem[ceil32(return_data.size) + 128]
                idx = 0
                s = mem[64] + 64
                t = ceil32(return_data.size) + 160
                while idx < _1213:
                    _1315 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_1315 + 32]
                    mem[s + 64] = mem[_1315 + 64]
                    mem[s + 96] = mem[_1315 + 120 len 8]
                    mem[s + 128] = mem[_1315 + 152 len 8]
                    mem[s + 160] = mem[_1315 + 184 len 8]
                    mem[s + 192] = mem[_1315 + 216 len 8]
                    mem[s + 224] = mem[_1315 + 224]
                    mem[s + 256] = mem[_1315 + 256]
                    mem[s + 288] = mem[_1315 + 288]
                    mem[s + 320] = mem[_1315 + 320]
                    idx = idx + 1
                    s = s + 352
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1209 + (352 * _1213) + -mem[64] + 64
            if unknown_0x5cc25914(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x40f2486c(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x318eae0c(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        call nftTokenAddress.0x318eae0c with:
                             gas gas_remaining wei
                            args cd[4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        staticcall priceOracleAddress.getTokenPrice() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        return ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] / 10000
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
                        require unknown_0x372500ab(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        if uint8(stor164.field_160):
                            revert with 0, 'game is under maintenance'
                        if stor159[msg.sender]:
                            revert with 0, 'your account has been banned'
                        if ext_code.size(msg.sender):
                            revert with 0, 'msg.sender is not wallet'
                        if not balances[msg.sender]:
                            revert with 0, 'Insufficient balance'
                        if not stor163[msg.sender]:
                            stor163[msg.sender] = 1
                        require ext_code.size(sub_1d98b81aAddress)
                        call sub_1d98b81aAddress.0x3ea535ba with:
                             gas gas_remaining wei
                            args msg.sender, balances[msg.sender] / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        balances[msg.sender] = 0
                        emit ClaimedRewards(msg.sender, balances[msg.sender] / 10000);
                else:
                    if unknown_0x40f2486c(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return balances[address(cd[4])], balances[address(cd[4])] / 10^18
                    if unknown_0x4b0e7216(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if not roleAdmin[0][address(msg.sender)].field_0:
                            revert with 0, 'Not admin'
                        burnAddress = address(cd[4])
                        emit 0xdc5f4d59: address(cd[4])
                    else:
                        if unknown_0x530e784f(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if not roleAdmin[0][address(msg.sender)].field_0:
                                revert with 0, 'Not admin'
                            priceOracleAddress = address(cd[4])
                            emit 0xcd39ca30: address(cd[4])
                        else:
                            require unknown_0x5ba31fdd(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if uint8(stor164.field_160):
                                revert with 0, 'game is under maintenance'
                            if stor159[msg.sender]:
                                revert with 0, 'your account has been banned'
                            if ext_code.size(msg.sender):
                                revert with 0, 'msg.sender is not wallet'
                            staticcall priceOracleAddress.getTokenPrice() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            call nftTokenAddress.0x1fd42e28 with:
                                 gas gas_remaining wei
                                args cd[4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            staticcall sub_7cc42ebaAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0] / 10000:
                                revert with 0, 'Insufficient Token balance'
                            call nftTokenAddress.0x8de1c95b with:
                                 gas gas_remaining wei
                                args msg.sender, cd[4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not stor163[msg.sender]:
                                stor163[msg.sender] = 1
                            call sub_7cc42ebaAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, ext_call.return_data[0] * ext_call.return_data[0] / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            staticcall sub_7cc42ebaAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10000 <= ext_call.return_data[0]:
                                if ext_call.return_data[0] * ext_call.return_data[0] / 10000 and sub_840feb57 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10000:
                                    revert with 0, 17
                                call sub_7cc42ebaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_1d98b81aAddress, ext_call.return_data[0] * ext_call.return_data[0] / 10000 * sub_840feb57 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if ext_call.return_data[0] * ext_call.return_data[0] / 10000 < ext_call.return_data[0] * ext_call.return_data[0] / 10000 * sub_840feb57 / 100:
                                    revert with 0, 17
                                call sub_7cc42ebaAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args burnAddress, (ext_call.return_data[0] * ext_call.return_data[0] / 10000) - (ext_call.return_data[0] * ext_call.return_data[0] / 10000 * sub_840feb57 / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit 0xc180d2e2: msg.sender, cd[4], ext_call.return_data[0]
            else:
                if unknown_0x5fe7416b(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x5fe7416b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 128
                        require cd[4] == address(cd[4])
                        mem[132] = address(cd[4])
                        staticcall nftTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(cd[4])
                        mem[128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        if ext_call.return_data[0] < cd[36]:
                            return 0
                        idx = 0
                        s = 0
                        while idx < ext_call.return_data[0]:
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = idx
                            staticcall nftTokenAddress.0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(cd[4]), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _819 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _832 = mem[_819]
                            _862 = mem[64]
                            mem[64] = mem[64] + 352
                            mem[_862] = 0
                            mem[_862 + 32] = 0
                            mem[_862 + 64] = 0
                            mem[_862 + 96] = 0
                            mem[_862 + 128] = 0
                            mem[_862 + 160] = 0
                            mem[_862 + 192] = 0
                            mem[_862 + 224] = 0
                            mem[_862 + 256] = 0
                            mem[_862 + 288] = 0
                            mem[_862 + 320] = 0
                            staticcall nftTokenAddress.0x21d80111 with:
                                    gas gas_remaining wei
                                   args _832
                            mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _887 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 352
                            _907 = mem[64]
                            if mem[64] + 352 < mem[64] or mem[64] + 352 > test266151307():
                                revert with 0, 65
                            mem[64] = mem[64] + 352
                            mem[_907] = mem[_887]
                            mem[_907 + 32] = mem[_887 + 32]
                            mem[_907 + 64] = mem[_887 + 64]
                            require mem[_887 + 96] == mem[_887 + 120 len 8]
                            mem[_907 + 96] = mem[_887 + 96]
                            require mem[_887 + 128] == mem[_887 + 152 len 8]
                            mem[_907 + 128] = mem[_887 + 128]
                            require mem[_887 + 160] == mem[_887 + 184 len 8]
                            mem[_907 + 160] = mem[_887 + 160]
                            require mem[_887 + 192] == mem[_887 + 216 len 8]
                            mem[_907 + 192] = mem[_887 + 192]
                            mem[_907 + 224] = mem[_887 + 224]
                            mem[_907 + 256] = mem[_887 + 256]
                            mem[_907 + 288] = mem[_887 + 288]
                            mem[_907 + 320] = mem[_887 + 320]
                            if cd[100] != mem[_907]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if 1 > !s:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + 1
                            continue 
                        return cd[68] <= s
                    if uint32(call.func_hash) >> 224 != unknown_0x65d50b37(?????):
                        if unknown_0x6a4aeeb8(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return sub_6a4aeeb8Address
                        require unknown_0x6e02cfc3(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if not roleAdmin[0][address(msg.sender)].field_0:
                            revert with 0, 'Not admin'
                        sub_6a4aeeb8Address = address(cd[4])
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if stor163[address(cd[4])]:
                        return bool(stor163[address(cd[4])])
                    mem[0] = address(cd[4])
                    mem[32] = 156
                    if balances[address(cd[4])]:
                        return bool(balances[address(cd[4])])
                    mem[132] = address(cd[4])
                    staticcall nftTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[4])
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > test266151307():
                        revert with 0, 65
                    mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
                    if not ext_call.return_data[0]:
                        idx = 0
                        while idx < ext_call.return_data[0]:
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = idx
                            staticcall nftTokenAddress.0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(cd[4]), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _821 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _833 = mem[_821]
                            _863 = mem[64]
                            mem[64] = mem[64] + 352
                            mem[_863] = 0
                            mem[_863 + 32] = 0
                            mem[_863 + 64] = 0
                            mem[_863 + 96] = 0
                            mem[_863 + 128] = 0
                            mem[_863 + 160] = 0
                            mem[_863 + 192] = 0
                            mem[_863 + 224] = 0
                            mem[_863 + 256] = 0
                            mem[_863 + 288] = 0
                            mem[_863 + 320] = 0
                            staticcall nftTokenAddress.0x21d80111 with:
                                    gas gas_remaining wei
                                   args _833
                            mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _888 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 352
                            _908 = mem[64]
                            if mem[64] + 352 < mem[64] or mem[64] + 352 > test266151307():
                                revert with 0, 65
                            mem[64] = mem[64] + 352
                            mem[_908] = mem[_888]
                            mem[_908 + 32] = mem[_888 + 32]
                            mem[_908 + 64] = mem[_888 + 64]
                            require mem[_888 + 96] == mem[_888 + 120 len 8]
                            mem[_908 + 96] = mem[_888 + 96]
                            require mem[_888 + 128] == mem[_888 + 152 len 8]
                            mem[_908 + 128] = mem[_888 + 128]
                            require mem[_888 + 160] == mem[_888 + 184 len 8]
                            mem[_908 + 160] = mem[_888 + 160]
                            require mem[_888 + 192] == mem[_888 + 216 len 8]
                            mem[_908 + 192] = mem[_888 + 192]
                            mem[_908 + 224] = mem[_888 + 224]
                            mem[_908 + 256] = mem[_888 + 256]
                            mem[_908 + 288] = mem[_888 + 288]
                            mem[_908 + 320] = mem[_888 + 320]
                            if idx >= mem[ceil32(return_data.size) + 128]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(return_data.size) + 160] = _908
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 512
                        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 0
                        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 0
                        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = 0
                        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 256] = 0
                        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 288] = 0
                        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 320] = 0
                        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 352] = 0
                        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 384] = 0
                        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 416] = 0
                        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 448] = 0
                        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 480] = 0
                        mem[var30001] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
                        s = var30001
                        idx = var30002
                        while idx - 1:
                            mem[64] = mem[64] + 352
                            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 0
                            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 0
                            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = 0
                            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 256] = 0
                            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 288] = 0
                            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 320] = 0
                            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 352] = 0
                            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 384] = 0
                            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 416] = 0
                            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 448] = 0
                            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 480] = 0
                            mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
                            s = s + 32
                            idx = idx - 1
                            continue 
                        idx = 0
                        while idx < ext_call.return_data[0]:
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = idx
                            staticcall nftTokenAddress.0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(cd[4]), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1218 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1224 = mem[_1218]
                            _1237 = mem[64]
                            mem[64] = mem[64] + 352
                            mem[_1237] = 0
                            mem[_1237 + 32] = 0
                            mem[_1237 + 64] = 0
                            mem[_1237 + 96] = 0
                            mem[_1237 + 128] = 0
                            mem[_1237 + 160] = 0
                            mem[_1237 + 192] = 0
                            mem[_1237 + 224] = 0
                            mem[_1237 + 256] = 0
                            mem[_1237 + 288] = 0
                            mem[_1237 + 320] = 0
                            staticcall nftTokenAddress.0x21d80111 with:
                                    gas gas_remaining wei
                                   args _1224
                            mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1260 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 352
                            _1270 = mem[64]
                            if mem[64] + 352 < mem[64] or mem[64] + 352 > test266151307():
                                revert with 0, 65
                            mem[64] = mem[64] + 352
                            mem[_1270] = mem[_1260]
                            mem[_1270 + 32] = mem[_1260 + 32]
                            mem[_1270 + 64] = mem[_1260 + 64]
                            require mem[_1260 + 96] == mem[_1260 + 120 len 8]
                            mem[_1270 + 96] = mem[_1260 + 96]
                            require mem[_1260 + 128] == mem[_1260 + 152 len 8]
                            mem[_1270 + 128] = mem[_1260 + 128]
                            require mem[_1260 + 160] == mem[_1260 + 184 len 8]
                            mem[_1270 + 160] = mem[_1260 + 160]
                            require mem[_1260 + 192] == mem[_1260 + 216 len 8]
                            mem[_1270 + 192] = mem[_1260 + 192]
                            mem[_1270 + 224] = mem[_1260 + 224]
                            mem[_1270 + 256] = mem[_1260 + 256]
                            mem[_1270 + 288] = mem[_1260 + 288]
                            mem[_1270 + 320] = mem[_1260 + 320]
                            if idx >= mem[ceil32(return_data.size) + 128]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(return_data.size) + 160] = _1270
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    mem[mem[64]] = mem[ceil32(return_data.size) + 128] > 0
                    return memory
                      from mem[64]
                       len 32
                if unknown_0x5cc25914(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if not roleAdmin[0][address(msg.sender)].field_0:
                        revert with 0, 'Not admin'
                    nftTokenAddress = address(cd[4])
                    emit UpdatedCharacterContract(address(cd[4]));
                else:
                    if unknown_0x5cf31ce8(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if not roleAdmin[0][address(msg.sender)].field_0:
                            revert with 0, 'Not admin'
                        sub_c7d4f1cfAddress = address(cd[4])
                    else:
                        if unknown_0x5d068156(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            call nftTokenAddress.0x5d068156 with:
                                 gas gas_remaining wei
                                args cd[4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            return ext_call.return_data[0]
                        require unknown_0x5e9859fb(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == uint8(cd[4])
                        if uint8(stor164.field_160):
                            revert with 0, 'game is under maintenance'
                        if stor159[msg.sender]:
                            revert with 0, 'your account has been banned'
                        if ext_code.size(msg.sender):
                            revert with 0, 'msg.sender is not wallet'
                        require ext_code.size(stor162)
                        call stor162.0x69393a77 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        staticcall nftTokenAddress.0x77548382 with:
                                gas gas_remaining wei
                        require return_data.size >= 32
                        call sub_6a4aeeb8Address.getQuality(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        staticcall sub_6a4aeeb8Address.getPrice(uint8 arg1) with:
                                gas gas_remaining wei
                               args uint8(cd[4])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not priceOracleAddress:
                            revert with 0, 'Price Oracle was not set yet'
                        staticcall priceOracleAddress.getTokenPrice() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        staticcall sub_7cc42ebaAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0] / 10000:
                            revert with 0, 'Insufficient token balance'
                        if not block.timestamp:
                            revert with 0, 18
                        if block.timestamp > !block.difficulty:
                            revert with 0, 17
                        if block.timestamp + block.difficulty > !block.gas_limit:
                            revert with 0, 17
                        if block.timestamp + block.difficulty + block.gas_limit > !block.number:
                            revert with 0, 17
                        if block.timestamp + block.difficulty + block.gas_limit + block.number > !(sha3(block.coinbase) / block.timestamp):
                            revert with 0, 17
                        if block.timestamp + block.difficulty + block.gas_limit + block.number + (sha3(block.coinbase) / block.timestamp) > !(sha3(msg.sender) / block.timestamp):
                            revert with 0, 17
                        mem[(7 * ceil32(return_data.size)) + 300] = msg.sender
                        mem[(7 * ceil32(return_data.size)) + 332] = sha3(block.timestamp + block.difficulty + block.gas_limit + block.number + (sha3(block.coinbase) / block.timestamp) + (sha3(msg.sender) / block.timestamp))
                        mem[(7 * ceil32(return_data.size)) + 364] = ext_call.return_data[0]
                        call nftTokenAddress.mint(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args msg.sender, sha3(block.timestamp + block.difficulty + block.gas_limit + block.number + (sha3(block.coinbase) / block.timestamp) + (sha3(msg.sender) / block.timestamp)), ext_call.return_data[0]
                        mem[(7 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not stor163[msg.sender]:
                            stor163[msg.sender] = 1
                        mem[(8 * ceil32(return_data.size)) + 300] = msg.sender
                        mem[(8 * ceil32(return_data.size)) + 332] = this.address
                        mem[(8 * ceil32(return_data.size)) + 364] = ext_call.return_data[0] * ext_call.return_data[0] / 10000
                        call sub_7cc42ebaAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args mem[(8 * ceil32(return_data.size)) + 300 len ceil32(return_data.size) + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        staticcall sub_7cc42ebaAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address, mem[(10 * ceil32(return_data.size)) + 332 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                            if sub_c7d4f1cfAddress:
                                require ext_code.size(sub_c7d4f1cfAddress)
                                call sub_c7d4f1cfAddress.openBox(address arg1) with:
                                     gas gas_remaining wei
                                    args msg.sender, mem[(12 * ceil32(return_data.size)) + 332 len 9 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            emit 0x928ce126: msg.sender, ext_call.return_data[0], ext_call.return_data[0], mem[(12 * ceil32(return_data.size)) + 392 len 9 * ceil32(return_data.size)]
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10000 and sub_840feb57 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10000:
                                revert with 0, 17
                            call sub_7cc42ebaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_1d98b81aAddress, ext_call.return_data[0] * ext_call.return_data[0] / 10000 * sub_840feb57 / 100, mem[(12 * ceil32(return_data.size)) + 364 len 9 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10000 < ext_call.return_data[0] * ext_call.return_data[0] / 10000 * sub_840feb57 / 100:
                                revert with 0, 17
                            call sub_7cc42ebaAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args burnAddress, (ext_call.return_data[0] * ext_call.return_data[0] / 10000) - (ext_call.return_data[0] * ext_call.return_data[0] / 10000 * sub_840feb57 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if sub_c7d4f1cfAddress:
                                require ext_code.size(sub_c7d4f1cfAddress)
                                call sub_c7d4f1cfAddress.openBox(address arg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            emit 0x928ce126: msg.sender, ext_call.return_data[0], ext_call.return_data[0]
        else:
            if unknown_0xb44f36b3(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x82821369(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x77548382(?????) > uint32(call.func_hash) >> 224:
                        if unknown_0x70d5ae05(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return burnAddress
                        if unknown_0x721e5f1d(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if not roleAdmin[0][address(msg.sender)].field_0:
                                revert with 0, 'Not admin'
                            sub_7cc42ebaAddress = address(cd[4])
                            emit UpdatedTokenContract(address(cd[4]));
                        else:
                            require unknown_0x72301d05(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if not roleAdmin[0][address(msg.sender)].field_0:
                                revert with 0, 'Not admin'
                            sub_1d98b81aAddress = address(cd[4])
                            emit 0x9d337dc8: address(cd[4])
                    if unknown_0x77548382(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        staticcall nftTokenAddress.0x77548382 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    if unknown_0x78359ed1(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return bool(stor158[cd[4]])
                    if uint32(call.func_hash) >> 224 != unknown_0x786aee6a(?????):
                        require unknown_0x7cc42eba(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return sub_7cc42ebaAddress
                    require not msg.value
                    require calldata.size - 4 >= 32
                    call nftTokenAddress.0x786aee6a with:
                         gas gas_remaining wei
                        args cd[4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    staticcall priceOracleAddress.getTokenPrice() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    return ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] / 10000
                if unknown_0x91d14854(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x91d14854(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[36] == address(cd[36])
                        return bool(roleAdmin[cd[4]][address(cd[36])].field_0)
                    if uint32(call.func_hash) >> 224 != unknown_0x9836d171(?????):
                        if unknown_0x9d0180b8(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return 0x62cdafb0605b9874beb13e1bc9707e69c7e7cecc4d9ac5fe6cd8d6605fe03f5b
                        require unknown_0xa217fddf(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return 0
                    require not msg.value
                    require calldata.size - 4 >= 32
                    staticcall priceOracleAddress.getTokenPrice() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    call nftTokenAddress.0x1fd42e28 with:
                         gas gas_remaining wei
                        args cd[4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10000)
                if uint32(call.func_hash) >> 224 != unknown_0x82821369(?????):
                    if unknown_0x840feb57(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_840feb57
                    require unknown_0x8b263fc7(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    if not roleAdmin[0][address(msg.sender)].field_0:
                        revert with 0, 'Not admin'
                    staticcall sub_7cc42ebaAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args sub_1d98b81aAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_1d98b81aAddress)
                    call sub_1d98b81aAddress.0x3ea535ba with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if uint8(stor164.field_160):
                        revert with 0, 'game is under maintenance'
                    if not priceOracleAddress:
                        revert with 0, 'Price Oracle was not set yet'
                    if stor159[msg.sender]:
                        revert with 0, 'your account has been banned'
                    if ext_code.size(msg.sender):
                        revert with 0, 'msg.sender is not wallet'
                    require ext_code.size(nftTokenAddress)
                    call nftTokenAddress.0x779014e3 with:
                         gas gas_remaining wei
                        args msg.sender, cd[4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    staticcall priceOracleAddress.getTokenPrice() with:
                            gas gas_remaining wei
                    require return_data.size >= 32
                    call nftTokenAddress.getBuyBackPrice(uint256 arg1) with:
                         gas gas_remaining wei
                        args cd[4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if balances[msg.sender] > !(ext_call.return_data[0] * ext_call.return_data[0] / 10000):
                        revert with 0, 17
                    balances[msg.sender] += ext_call.return_data[0] * ext_call.return_data[0] / 10000
                    emit 0x83f07cda: msg.sender, cd[4], ext_call.return_data[0] * ext_call.return_data[0] / 10000
            else:
                if unknown_0xd11ec7a9(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0xca39e5ef(?????) > uint32(call.func_hash) >> 224:
                        if uint32(call.func_hash) >> 224 != unknown_0xb44f36b3(?????):
                            if uint32(call.func_hash) >> 224 != unknown_0xbd424ee7(?????):
                                require unknown_0xc7d4f1cf(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                return sub_c7d4f1cfAddress
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            return bool(stor159[cd[4]])
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        require cd[36] == bool(cd[36])
                        if not roleAdmin[0][address(msg.sender)].field_0:
                            revert with 0, 'Not admin'
                        stor159[address(cd[4])] = uint8(bool(cd[36]))
                    else:
                        if unknown_0xca39e5ef(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            if uint8(stor164.field_160):
                                revert with 0, 'game is under maintenance'
                            if stor159[msg.sender]:
                                revert with 0, 'your account has been banned'
                            if ext_code.size(msg.sender):
                                revert with 0, 'msg.sender is not wallet'
                            require ext_code.size(stor162)
                            call stor162.0x69393a77 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            staticcall stor162.getRandomSeed(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            require return_data.size >= 32
                            call nftTokenAddress.0x87cc02bc with:
                                 gas gas_remaining wei
                                args msg.sender, cd[4], cd[36], ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                            staticcall priceOracleAddress.getTokenPrice() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[64] and ext_call.return_data[0] > -1 / ext_call.return_data[64]:
                                revert with 0, 17
                            if balances[msg.sender] > !(ext_call.return_data[64] * ext_call.return_data[0] / 100):
                                revert with 0, 17
                            balances[msg.sender] += ext_call.return_data[64] * ext_call.return_data[0] / 100
                            if not stor163[msg.sender]:
                                stor163[msg.sender] = 1
                            emit 0x505f4a3c: msg.sender, cd[4], cd[36], ext_call.return_data[64] * ext_call.return_data[0] / 100, ext_call.return_data[32], uint16(ext_call.return_data[0])
                        else:
                            if unknown_0xca9c0bad(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require cd[4] == address(cd[4])
                                if not roleAdmin[0][address(msg.sender)].field_0:
                                    revert with 0, 'Not admin'
                                stor162 = address(cd[4])
                            else:
                                if uint32(call.func_hash) >> 224 != unknown_0xcc2a9a5b(?????):
                                    require unknown_0xd06fcba8(?????) == uint32(call.func_hash) >> 224
                                    require not msg.value
                                    return nftTokenAddress
                                require not msg.value
                                require calldata.size - 4 >= 192
                                require cd[4] == address(cd[4])
                                require cd[36] == address(cd[36])
                                require cd[68] == address(cd[68])
                                require cd[100] == address(cd[100])
                                require cd[132] == address(cd[132])
                                require cd[164] == address(cd[164])
                                if uint8(stor0.field_8):
                                    if ext_code.size(this.address):
                                        revert with 0, 'Initializable: contract is already initialized'
                                else:
                                    if uint8(stor0.field_0):
                                        revert with 0, 'Initializable: contract is already initialized'
                                if not uint8(stor0.field_8):
                                    uint16(stor0.field_0) = 257
                                    revert with 0, 'Initializable: contract is not initializing'
                                if not roleAdmin[0][address(msg.sender)].field_0:
                                    roleAdmin[0][address(msg.sender)].field_0 = 1
                                    emit RoleGranted(0, msg.sender, msg.sender);
                                sub_7cc42ebaAddress = address(cd[4])
                                priceOracleAddress = address(cd[36])
                                nftTokenAddress = address(cd[68])
                                sub_1d98b81aAddress = address(cd[100])
                                burnAddress = address(cd[132])
                                sub_6a4aeeb8Address = address(cd[164])
                                sub_840feb57 = 70
                                if not uint8(stor0.field_8):
                                    uint8(stor0.field_8) = 0
                else:
                    if unknown_0xf630aa65(?????) <= uint32(call.func_hash) >> 224:
                        if unknown_0xf630aa65(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if not block.timestamp:
                                revert with 0, 18
                            if block.timestamp > !block.difficulty:
                                revert with 0, 17
                            if block.timestamp + block.difficulty > !block.gas_limit:
                                revert with 0, 17
                            if block.timestamp + block.difficulty + block.gas_limit > !block.number:
                                revert with 0, 17
                            if block.timestamp + block.difficulty + block.gas_limit + block.number > !(sha3(block.coinbase) / block.timestamp):
                                revert with 0, 17
                            if block.timestamp + block.difficulty + block.gas_limit + block.number + (sha3(block.coinbase) / block.timestamp) > !(sha3(msg.sender) / block.timestamp):
                                revert with 0, 17
                            return sha3(block.timestamp + block.difficulty + block.gas_limit + block.number + (sha3(block.coinbase) / block.timestamp) + (sha3(msg.sender) / block.timestamp))
                        if unknown_0xf71d96cb(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] < players.length
                            return players[cd[4]]
                        if unknown_0xfa20ede4(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == bool(cd[4])
                            if not roleAdmin[0][address(msg.sender)].field_0:
                                revert with 0, 'Not admin'
                            Mask(96, 0, stor164.field_160) = Mask(96, 0, bool(cd[4]))
                        require unknown_0xfd3eb3fd(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == uint8(cd[4])
                        staticcall sub_6a4aeeb8Address.getPrice(uint8 arg1) with:
                                gas gas_remaining wei
                               args uint8(cd[4])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    if unknown_0xd11ec7a9(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        call nftTokenAddress.0xd11ec7a9 with:
                             gas gas_remaining wei
                            args cd[4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    if unknown_0xd547741f(?????) == uint32(call.func_hash) >> 224:
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
                        revert with 0, 32, 148, 'AccessControl: account ', mem[192 len 42], 8297, mem[320 len 66], 0, 0 >> 928, 0
                    if uint32(call.func_hash) >> 224 != unknown_0xd9a1855c(?????):
                        require unknown_0xf0c1549d(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return bool(stor159[address(cd[4])])
                    require not msg.value
                    require calldata.size - 4 >= 64
                    if uint8(stor164.field_160):
                        revert with 0, 'game is under maintenance'
                    if stor159[msg.sender]:
                        revert with 0, 'your account has been banned'
                    if ext_code.size(msg.sender):
                        revert with 0, 'msg.sender is not wallet'
                    mem[132] = cd[4]
                    mem[164] = cd[36]
                    staticcall nftTokenAddress.0x241a0620 with:
                            gas gas_remaining wei
                           args cd[4], cd[36]
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'not enough endurance to fight'
                    mem[ceil32(return_data.size) + 132] = cd[4]
                    staticcall nftTokenAddress.getQuality(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[4]
                    mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(return_data.size)) + 132] = cd[36]
                    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    call nftTokenAddress.0x251849c4 with:
                         gas gas_remaining wei
                        args cd[36], ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor162)
                    call stor162.0x69393a77 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 128] = 0x6126b6d800000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + 164] = uint8(ext_call.return_data[0])
                    staticcall stor162.0x6126b6d8 with:
                            gas gas_remaining wei
                           args msg.sender, uint8(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _480 = mem[(4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + return_data.size + 128 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                    _501 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 129
                    mem[(6 * ceil32(return_data.size)) + 128] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    require _480 + (32 * _501) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + 160 len ceil32(32 * _501)] = mem[(4 * ceil32(return_data.size)) + _480 + 160 len ceil32(32 * _501)]
                    idx = 0
                    s = 0
                    while uint8(idx) < _501:
                        if uint8(idx) >= _501:
                            revert with 0, 50
                        if mem[(32 * uint8(idx)) + (6 * ceil32(return_data.size)) + 160] % 100 > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (mem[(32 * uint8(idx)) + (6 * ceil32(return_data.size)) + 160] % 100) + ext_call.return_data[0] <= 100:
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        if s > -2:
                            revert with 0, 17
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = s + 1
                        continue 
                    mem[0] = msg.sender
                    mem[32] = 163
                    if stor163[msg.sender]:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = cd[4]
                        mem[mem[64] + 68] = cd[36]
                        mem[mem[64] + 100] = s
                        mem[mem[64] + 132] = ext_call.return_data[0]
                        call nftTokenAddress.0x12b52b02 with:
                             gas gas_remaining wei
                            args msg.sender, cd[4], cd[36], s, ext_call.return_data[0]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1045 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1055 = mem[_1045]
                        staticcall priceOracleAddress.getTokenPrice() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1073 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1085 = mem[_1073]
                        if not _1055:
                            if ext_call.return_data[0] > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                revert with 0, 17
                            if mem[_1073] and 5 * ext_call.return_data[0] > -1 / mem[_1073]:
                                revert with 0, 17
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = sub_1d98b81aAddress
                            mem[mem[64] + 68] = 5 * _1085 * ext_call.return_data[0] / 10000
                            call sub_7cc42ebaAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, sub_1d98b81aAddress, 5 * _1085 * ext_call.return_data[0] / 10000
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1167 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1167] == bool(mem[_1167])
                            emit 0xbace4a14: msg.sender, cd[4], 5 * _1085 * ext_call.return_data[0] / 10000, 0, ext_call.return_data[0], s
                        else:
                            if _1055 and mem[_1073] > -1 / _1055:
                                revert with 0, 17
                            if balances[msg.sender] > !(_1055 * mem[_1073] / 100):
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 156
                            balances[msg.sender] += _1055 * _1085 / 100
                            if ext_call.return_data[0] > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                revert with 0, 17
                            if _1085 and 5 * ext_call.return_data[0] > -1 / _1085:
                                revert with 0, 17
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = sub_1d98b81aAddress
                            mem[mem[64] + 68] = 5 * _1085 * ext_call.return_data[0] / 10000
                            call sub_7cc42ebaAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, sub_1d98b81aAddress, 5 * _1085 * ext_call.return_data[0] / 10000
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1195 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1195] == bool(mem[_1195])
                            emit 0xbace4a14: msg.sender, cd[4], 5 * _1085 * ext_call.return_data[0] / 10000, _1055 * _1085 / 100, ext_call.return_data[0], s
                    else:
                        mem[0] = msg.sender
                        mem[32] = 163
                        stor163[msg.sender] = 1
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = cd[4]
                        mem[mem[64] + 68] = cd[36]
                        mem[mem[64] + 100] = s
                        mem[mem[64] + 132] = ext_call.return_data[0]
                        call nftTokenAddress.0x12b52b02 with:
                             gas gas_remaining wei
                            args msg.sender, cd[4], cd[36], s, ext_call.return_data[0]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1051 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1066 = mem[_1051]
                        staticcall priceOracleAddress.getTokenPrice() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1077 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1091 = mem[_1077]
                        if not _1066:
                            if ext_call.return_data[0] > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                revert with 0, 17
                            if mem[_1077] and 5 * ext_call.return_data[0] > -1 / mem[_1077]:
                                revert with 0, 17
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = sub_1d98b81aAddress
                            mem[mem[64] + 68] = 5 * _1091 * ext_call.return_data[0] / 10000
                            call sub_7cc42ebaAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, sub_1d98b81aAddress, 5 * _1091 * ext_call.return_data[0] / 10000
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1173 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1173] == bool(mem[_1173])
                            emit 0xbace4a14: msg.sender, cd[4], 5 * _1091 * ext_call.return_data[0] / 10000, 0, ext_call.return_data[0], s
                        else:
                            if _1066 and mem[_1077] > -1 / _1066:
                                revert with 0, 17
                            if balances[msg.sender] > !(_1066 * mem[_1077] / 100):
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 156
                            balances[msg.sender] += _1066 * _1091 / 100
                            if ext_call.return_data[0] > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                revert with 0, 17
                            if _1091 and 5 * ext_call.return_data[0] > -1 / _1091:
                                revert with 0, 17
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = sub_1d98b81aAddress
                            mem[mem[64] + 68] = 5 * _1091 * ext_call.return_data[0] / 10000
                            call sub_7cc42ebaAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, sub_1d98b81aAddress, 5 * _1091 * ext_call.return_data[0] / 10000
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1198 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1198] == bool(mem[_1198])
                            emit 0xbace4a14: msg.sender, cd[4], 5 * _1091 * ext_call.return_data[0] / 10000, _1066 * _1091 / 100, ext_call.return_data[0], s
}



}
