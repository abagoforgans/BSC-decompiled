contract main {




// =====================  Runtime code  =====================


#
#  - bid(uint256 arg1, uint256 arg2, uint256 arg3)
#  - creatorClaim(uint256 arg1)
#  - sub_740a40a6(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address governorAddress;
mapping of uint256 config;
array of struct stor53;
mapping of uint8 stor54;
mapping of uint8 stor55;
mapping of uint256 sub_72d774c3;
mapping of address sub_f5639ff5;
mapping of uint256 sub_64cc79bd;
mapping of uint256 sub_bbe7180d;
mapping of uint256 stor60;
array of uint256 sub_507a0a3d;
mapping of uint256 sub_8d32b658;
mapping of uint8 stor63;
mapping of uint256 sub_29a65f8f;
mapping of address sub_ef5135ed;
array of uint256 stor99;
uint256 minValueOfBotHolder;
address sub_ee24fff5Address;
uint256 stor24FB;
uint256 txFeeRatio;
address botTokenAddress;
uint256 stor3A5C;
address feeAddress;
uint256 stor5647;
uint256 sub_306ed47b;
array of address stor93919839132673366524933561348464307323150594581428697006173117430883306160973;
array of address stor93919839132673366524933561348464307323150594581428697006173117430883306160975;
array of uint256 stor93919839132673366524933561348464307323150594581428697006173117430883306160976;
array of uint256 stor93919839132673366524933561348464307323150594581428697006173117430883306160977;
array of uint256 stor93919839132673366524933561348464307323150594581428697006173117430883306160978;
array of uint256 stor93919839132673366524933561348464307323150594581428697006173117430883306160979;
array of uint256 stor93919839132673366524933561348464307323150594581428697006173117430883306160980;
array of uint256 stor93919839132673366524933561348464307323150594581428697006173117430883306160981;
array of uint256 stor93919839132673366524933561348464307323150594581428697006173117430883306160982;

function governor() {
    return governorAddress
}

function getTxFeeRatio() {
    return txFeeRatio
}

function sub_29a65f8f(?) {
    require calldata.size - 4 >= 32
    return sub_29a65f8f[arg1]
}

function sub_306ed47b(?) {
    return sub_306ed47b
}

function getFeeAddress() {
    return address(feeAddress)
}

function sub_507a0a3d(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_507a0a3d[arg1]
    return sub_507a0a3d[arg1][arg2]
}

function getConfig(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return config[arg1 xor arg2]
}

function getMinValueOfBotHolder() {
    return minValueOfBotHolder
}

function sub_64cc79bd(?) {
    require calldata.size - 4 >= 32
    return sub_64cc79bd[arg1]
}

function getConfig(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return config[arg1]
}

function sub_72d774c3(?) {
    require calldata.size - 4 >= 32
    return sub_72d774c3[arg1]
}

function sub_8d32b658(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_8d32b658[arg1][arg2]
}

function getConfig(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return config[arg2 xor arg1]
}

function getPoolCount() {
    return stor53.length
}

function sub_bbe7180d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_bbe7180d[arg1]
}

function sub_c6472b12(?) {
    require calldata.size - 4 >= 32
    return bool(stor55[arg1])
}

function getBotToken() {
    return address(botTokenAddress)
}

function sub_d286bea5(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return bool(stor63[arg1][arg2])
}

function sub_e87ba7aa(?) {
    require calldata.size - 4 >= 32
    return bool(stor54[arg1])
}

function sub_ee24fff5(?) {
    return address(sub_ee24fff5Address)
}

function sub_ef5135ed(?) {
    require calldata.size - 4 >= 32
    return sub_ef5135ed[arg1]
}

function sub_f5639ff5(?) {
    require calldata.size - 4 >= 32
    return sub_f5639ff5[arg1]
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

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function sub_9d6ce84b(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require calldata.size >= arg1.length + arg1 + 36
    mem[ceil32(arg1.length) + 128] = stor60[arg1[all]]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_8695f2d2(?) {
    require calldata.size - 4 >= 32
    require arg1 < stor53.length
    idx = 768
    s = 0
    while stor[('name', 'stor53', 53) + (10 * arg1) + 1].length + 736 > idx:
        mem[idx + 32] = stor[s + sha3(('name', 'stor53', 53) + (10 * arg1) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not sub_f5639ff5[arg1]:
        if stor53[arg1].field_1280:
            return stor53[arg1].field_1280
        return stor53[arg1].field_1536
    if stor53[arg1].field_1536 + sub_64cc79bd[arg1] < sub_64cc79bd[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    return (stor53[arg1].field_1536 + sub_64cc79bd[arg1])
}

function pools(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor53.length
    mem[128] = stor[sha3((10 * arg1) + ('name', 'stor53', 53) + 1)].field_0
    idx = 128
    s = 0
    while stor[(10 * arg1) + ('name', 'stor53', 53) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((10 * arg1) + ('name', 'stor53', 53) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor53[arg1].field_0), 
           Array(len=stor[(10 * arg1) + ('name', 'stor53', 53) + 1].length, data=mem[128 len ceil32(stor[(10 * arg1) + ('name', 'stor53', 53) + 1].length)]),
           address(stor53[arg1].field_512),
           stor53[arg1].field_768,
           stor53[arg1].field_1024,
           stor53[arg1].field_1280,
           stor53[arg1].field_1536,
           stor53[arg1].field_1792,
           stor53[arg1].field_2048,
           stor53[arg1].field_2304
}

function bidderClaim(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= stor53.length:
        revert with 0, 'this pool does not exist'
    if stor53[arg1].field_2048 > block.timestamp:
        revert with 0, 'this pool is not closed'
    if sub_f5639ff5[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sender is not the winner of this pool'
    if stor63[address(msg.sender)][arg1]:
        revert with 0, 'sender has claimed this pool'
    stor63[address(msg.sender)][arg1] = 1
    require arg1 < stor53.length
    idx = 768
    s = 0
    while stor[('name', 'stor53', 53) + (10 * arg1) + 1].length + 736 > idx:
        mem[idx + 32] = stor[s + sha3(('name', 'stor53', 53) + (10 * arg1) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(address(stor53[arg1].field_512))
    if stor53[arg1].field_2304:
        call address(stor53[arg1].field_512).safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, stor53[arg1].field_768, stor53[arg1].field_1024, 160, 0
    else:
        call address(stor53[arg1].field_512).0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), msg.sender, stor53[arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Claimed(msg.sender, arg1);
}

function sub_76dd2a02(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if uint8(stor0.field_8):
        governorAddress = address(arg1)
        emit GovernorshipTransferred(0, address(arg1));
        minValueOfBotHolder = 10^17
        uint256(stor3A5C) = 0x48dc0190df5ece990c649a7a07ba19d3650a9572
        uint256(stor24FB) = 0x60dd632f7dd45cb97a86376863d623d6756e848
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        if uint8(stor0.field_8):
            governorAddress = address(arg1)
            emit GovernorshipTransferred(0, address(arg1));
            minValueOfBotHolder = 10^17
            uint256(stor3A5C) = 0x48dc0190df5ece990c649a7a07ba19d3650a9572
            uint256(stor24FB) = 0x60dd632f7dd45cb97a86376863d623d6756e848
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
            if uint8(stor0.field_8):
                governorAddress = address(arg1)
                emit GovernorshipTransferred(0, address(arg1));
                minValueOfBotHolder = 10^17
                uint256(stor3A5C) = 0x48dc0190df5ece990c649a7a07ba19d3650a9572
                uint256(stor24FB) = 0x60dd632f7dd45cb97a86376863d623d6756e848
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                governorAddress = address(arg1)
                emit GovernorshipTransferred(0, address(arg1));
                uint8(stor0.field_8) = 0
                minValueOfBotHolder = 10^17
                uint256(stor3A5C) = 0x48dc0190df5ece990c649a7a07ba19d3650a9572
                uint256(stor24FB) = 0x60dd632f7dd45cb97a86376863d623d6756e848
                uint8(stor0.field_8) = 0
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        governorAddress = arg1
        emit GovernorshipTransferred(0, arg1);
        txFeeRatio = 15 * 10^15
        minValueOfBotHolder = 10^17
        uint256(stor3A5C) = 0x5beabaebb3146685dd74176f68a0721f91297d37
        uint256(stor24FB) = 0xc7e5e9434f4a71e6db978bd65b4d61d3593e5f27
        uint256(stor5647) = 0xefe59b0721c85730acd37daac4eb32c3a96658ec
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        if uint8(stor0.field_8):
            governorAddress = arg1
            emit GovernorshipTransferred(0, arg1);
            txFeeRatio = 15 * 10^15
            minValueOfBotHolder = 10^17
            uint256(stor3A5C) = 0x5beabaebb3146685dd74176f68a0721f91297d37
            uint256(stor24FB) = 0xc7e5e9434f4a71e6db978bd65b4d61d3593e5f27
            uint256(stor5647) = 0xefe59b0721c85730acd37daac4eb32c3a96658ec
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
                txFeeRatio = 15 * 10^15
                minValueOfBotHolder = 10^17
                uint256(stor3A5C) = 0x5beabaebb3146685dd74176f68a0721f91297d37
                uint256(stor24FB) = 0xc7e5e9434f4a71e6db978bd65b4d61d3593e5f27
                uint256(stor5647) = 0xefe59b0721c85730acd37daac4eb32c3a96658ec
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                governorAddress = arg1
                emit GovernorshipTransferred(0, arg1);
                uint8(stor0.field_8) = 0
                txFeeRatio = 15 * 10^15
                minValueOfBotHolder = 10^17
                uint256(stor3A5C) = 0x5beabaebb3146685dd74176f68a0721f91297d37
                uint256(stor24FB) = 0xc7e5e9434f4a71e6db978bd65b4d61d3593e5f27
                uint256(stor5647) = 0xefe59b0721c85730acd37daac4eb32c3a96658ec
                uint8(stor0.field_8) = 0
}

function sub_d9be7d28(?) payable {
    require calldata.size - 4 >= 288
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == address(arg2)
    require arg8 == bool(arg8)
    if address(arg2) != address(sub_ee24fff5Address):
        revert with 0, 'invalid token0'
    mem[ceil32(arg1.length) + 128 len 96] = call.data[calldata.size len 96]
    if sub_bbe7180d[msg.sender]:
        revert with 0, 'a pool has created by this address'
    mem[ceil32(arg1.length) + 320 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + 320] = 60
    if stor[mem[(2 * ceil32(arg1.length)) + 320 len arg1.length + -ceil32(arg1.length) + 32]][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256] > 0:
        mem[ceil32(arg1.length) + 320 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(arg1.length) + 320] = 60
        require stor[mem[(2 * ceil32(arg1.length)) + 320 len arg1.length + -ceil32(arg1.length) + 32]][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256] - 1 < stor53.length
        if sub_bbe7180d[address(stor53[stor[mem[(2 * ceil32(arg1.length)) + 320 len arg1.length + -ceil32(arg1.length) + 32]][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256]].field_0)] > 0:
            require stor[mem[(2 * ceil32(arg1.length)) + 320 len arg1.length + -ceil32(arg1.length) + 32]][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256] - 1 < stor53.length
            if stor53[stor[mem[(2 * ceil32(arg1.length)) + 320 len arg1.length + -ceil32(arg1.length) + 32]][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256]].field_0 > block.timestamp:
                revert with 0, 'a live pool has been created by this name'
    if not arg4:
        revert with 0, 'the value of tokenAmount0 is zero'
    if not arg6:
        revert with 0, 'the value of amountMinIncr1 is zero'
    if arg7 < 300:
        revert with 0, 'the value of confirmTime less than 5 minutes'
    if arg7 > 24 * 3600:
        revert with 0, 'the value of confirmTime is exceeded 1 day'
    if arg1.length > 15:
        revert with 0, 'the length of name is too long'
    require ext_code.size(address(botTokenAddress))
    staticcall address(botTokenAddress).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_306ed47b:
        revert with 0, 'BOT is not enough'
    require ext_code.size(address(arg2))
    call address(arg2).safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg3, arg4, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg7 + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if arg8:
        stor55[stor53.length] = uint8(bool(arg8))
    if arg9:
        sub_72d774c3[stor53.length] = arg9
    stor53.length++
    storCFA4[stor53.length] = msg.sender
    stor[sha3((10 * stor53.length) - 0x305b413e2cd67bf744a50303263bcfab63a4ce0755a3a7b7eae3f5aa0b8c3cb2)][] = Array(len=arg1.length, data=arg1[all])
    storCFA4[stor53.length] = address(arg2)
    storCFA4[stor53.length] = arg3
    storCFA4[stor53.length] = arg4
    storCFA4[stor53.length] = arg5
    storCFA4[stor53.length] = arg6
    storCFA4[stor53.length] = arg7
    storCFA4[stor53.length] = arg7 + block.timestamp
    storCFA4[stor53.length] = 1
    sub_bbe7180d[address(msg.sender)] = stor53.length
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 640 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 640] = 60
    stor[mem[(2 * ceil32(arg1.length)) + ceil32(return_data.size) + 640 len arg1.length + -ceil32(arg1.length) + 32]][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256] = stor53.length
    emit 0xf954cec4: 32, msg.sender, 320, arg2 << 192, arg3, arg4, arg5, arg6, arg7, arg7 + block.timestamp, 1, arg1.length, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
}



}
