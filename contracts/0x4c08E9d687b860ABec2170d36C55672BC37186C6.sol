contract main {




// =====================  Runtime code  =====================


#
#  - playerClaim(uint256 arg1)
#  - creatorClaim(uint256 arg1)
#  - bet(uint256 arg1)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address governorAddress;
mapping of uint256 config;
array of struct stor53;
mapping of uint256 allPlayer;
mapping of uint8 stor55;
mapping of uint256 poolsExt;
array of uint256 myCreate;
array of uint256 myPlay;
mapping of uint256 stor59;
array of uint256 stor99;
array of uint256 stor93919839132673366524933561348464307323150594581428697006173117430883306160973;
array of address stor93919839132673366524933561348464307323150594581428697006173117430883306160974;
array of address stor93919839132673366524933561348464307323150594581428697006173117430883306160976;
array of uint256 stor93919839132673366524933561348464307323150594581428697006173117430883306160977;
array of address stor93919839132673366524933561348464307323150594581428697006173117430883306160978;
array of uint256 stor93919839132673366524933561348464307323150594581428697006173117430883306160979;
array of uint256 stor93919839132673366524933561348464307323150594581428697006173117430883306160980;
array of uint256 stor93919839132673366524933561348464307323150594581428697006173117430883306160981;
array of uint8 stor93919839132673366524933561348464307323150594581428697006173117430883306160982;
array of uint256 stor93919839132673366524933561348464307323150594581428697006173117430883306160983;
array of uint256 stor93919839132673366524933561348464307323150594581428697006173117430883306160984;

function governor() {
    return governorAddress
}

function poolsExt(uint256 arg1) {
    require calldata.size - 4 >= 32
    return poolsExt[arg1]
}

function allPlayer(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return allPlayer[arg1][arg2]
}

function getConfig(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return config[arg1 xor arg2]
}

function getConfig(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return config[arg1]
}

function getConfig(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return config[arg2 xor arg1]
}

function getPoolCount() {
    return stor53.length
}

function allPlayerClaim(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(stor55[arg1][arg2])
}

function myCreate(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < myCreate[arg1]
    return myCreate[arg1][arg2]
}

function myPlay(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < myPlay[arg1]
    return myPlay[arg1][arg2]
}

function _fallback() payable {
    revert
}

function renounceGovernorship() {
    require msg.sender == governorAddress
    emit GovernorshipTransferred(governorAddress, 0);
    governorAddress = 0
}

function setConfig(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == governorAddress
    if arg2 != config[arg1]:
        config[arg1] = arg2
}

function setConfig(bytes32 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == governorAddress
    if arg3 != config[arg2 xor arg1]:
        config[arg2 xor arg1] = arg3
}

function setConfig(bytes32 arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require msg.sender == governorAddress
    if arg3 != config[arg1 xor arg2]:
        config[arg1 xor arg2] = arg3
}

function transferGovernorship(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == governorAddress
    require arg1
    emit GovernorshipTransferred(governorAddress, arg1);
    governorAddress = arg1
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

function name2Id(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require calldata.size >= arg1.length + arg1 + 36
    mem[ceil32(arg1.length) + 128] = stor59[arg1[all]]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function isWinner(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    require arg1 - 1 < stor53.length
    if stor53[arg1].field_0 >= block.timestamp:
        revert with 0, 'It's not time to start the prize'
    if not allPlayer[arg1][address(arg2)]:
        return 0
    require arg1 - 1 < stor53.length
    if stor53[arg1].field_0 != 1:
        require arg1 - 1 < stor53.length
        require stor53[arg1].field_0
        if (poolsExt[arg1] % stor53[arg1].field_0) + 1 != allPlayer[arg1][address(arg2)]:
            return 0
    return 1
}

function getPlayerStatus(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'No pool ID'
    if arg1 > stor53.length:
        revert with 0, 'No pool ID'
    require arg1 - 1 < stor53.length
    idx = 896
    s = 0
    while stor[('name', 'stor53', 53) + (12 * arg1) - 10].length + 864 > idx:
        mem[idx + 32] = stor[s + sha3(('name', 'stor53', 53) + (12 * arg1) - 10)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if msg.sender == address(stor53[arg1].field_0):
        if not uint8(stor53[arg1].field_0):
            return 1
        return 5
    if not allPlayer[arg1][msg.sender]:
        return 0
    if not stor55[arg1][msg.sender]:
        return 2
    return 6
}

function getLotteryPoolInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'No pool ID'
    if arg1 > stor53.length:
        revert with 0, 'No pool ID'
    require arg1 - 1 < stor53.length
    mem[896] = stor[sha3(('name', 'stor53', 53) + (12 * arg1) - 10)].field_0
    idx = 896
    s = 0
    while stor[('name', 'stor53', 53) + (12 * arg1) - 10].length + 864 > idx:
        mem[idx + 32] = stor[s + sha3(('name', 'stor53', 53) + (12 * arg1) - 10)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor[('name', 'stor53', 53) + (12 * arg1) - 10].length, data=mem[896 len ceil32(stor[('name', 'stor53', 53) + (12 * arg1) - 10].length)]), 
           address(stor53[arg1].field_0),
           stor53[arg1].field_0,
           address(stor53[arg1].field_0),
           stor53[arg1].field_0,
           stor53[arg1].field_0,
           stor53[arg1].field_0,
           stor53[arg1].field_0
}

function pools(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor53.length
    mem[128] = stor[sha3((12 * arg1) + ('name', 'stor53', 53) + 2)].field_0
    idx = 128
    s = 0
    while stor[(12 * arg1) + ('name', 'stor53', 53) + 2].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((12 * arg1) + ('name', 'stor53', 53) + 2)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor53[arg1].field_0, 
           address(stor53[arg1].field_256),
           Array(len=stor[(12 * arg1) + ('name', 'stor53', 53) + 2].length, data=mem[128 len ceil32(stor[(12 * arg1) + ('name', 'stor53', 53) + 2].length)]),
           address(stor53[arg1].field_768),
           stor53[arg1].field_1024,
           address(stor53[arg1].field_1280),
           stor53[arg1].field_1536,
           stor53[arg1].field_1792,
           stor53[arg1].field_2048,
           bool(uint8(stor53[arg1].field_2304)),
           stor53[arg1].field_2560,
           stor53[arg1].field_2816
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        governorAddress = arg1
        emit GovernorshipTransferred(0, arg1);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        if uint8(stor0.field_8):
            governorAddress = arg1
            emit GovernorshipTransferred(0, arg1);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
            if uint8(stor0.field_8):
                governorAddress = arg1
                emit GovernorshipTransferred(0, arg1);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                governorAddress = arg1
                emit GovernorshipTransferred(0, arg1);
                uint8(stor0.field_8) = 0
                uint8(stor0.field_8) = 0
}

function create(string arg1, address arg2, uint256 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == arg2
    require arg4 == arg4
    mem[ceil32(arg1.length) + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + 128] = 59
    if stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)] > 0:
        revert with 0, 'a live pool has been created by this name'
    if not arg5:
        revert with 0, 'the value of amount1 is zero'
    if arg6 <= 0:
        revert with 0, 'the value of amount1 is zero'
    if not arg7:
        revert with 0, 'the value of duration is zero'
    if arg7 > 720 * 24 * 3600:
        revert with 0, 'the value of duration is exceeded 30 days'
    if arg1.length > 15:
        revert with 0, 'the length of name is too long'
    require ext_code.size(arg2)
    call arg2.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg7 + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    mem[ceil32(arg1.length) + 128] = stor53.length + 1
    stor53.length++
    storCFA4[stor53.length] = stor53.length + 1
    storCFA4[stor53.length] = msg.sender
    stor[sha3((12 * stor53.length) - 0x305b413e2cd67bf744a50303263bcfab63a4ce0755a3a7b7eae3f5aa0b8c3cb1)][] = Array(len=arg1.length, data=arg1[all])
    storCFA4[stor53.length] = arg2
    storCFA4[stor53.length] = arg3
    storCFA4[stor53.length] = arg4
    storCFA4[stor53.length] = arg5
    storCFA4[stor53.length] = arg6
    storCFA4[stor53.length] = 0
    storCFA4[stor53.length] = 0
    storCFA4[stor53.length] = arg7
    storCFA4[stor53.length] = arg7 + block.timestamp
    myCreate[address(msg.sender)]++
    myCreate[address(msg.sender)][myCreate[address(msg.sender)]] = stor53.length + 1
    mem[ceil32(arg1.length) + 512 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + 512] = 59
    stor[mem[(2 * ceil32(arg1.length)) + 512 len arg1.length + -ceil32(arg1.length) + 32]][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256] = stor53.length + 1
    emit 0x4fbe705b: 32, stor53.length + 1, msg.sender, 384, arg2 << 192, arg3, arg4 << 192, arg5, arg6, 0, 0, arg7, arg7 + block.timestamp, arg1.length, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
}



}
