contract main {




// =====================  Runtime code  =====================


#
#  - bid(uint256 arg1, uint256 arg2)
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
array of uint256 stor99;
uint256 sub_a5b6260e;
uint256 minValueOfBotHolder;
uint256 txFeeRatio;
address botTokenAddress;
uint256 stor3A5C;
uint256 miningDifficulty;
uint256 sub_306ed47b;
address sub_d41620d1Address;
uint256 storC81F;
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

function getMiningDifficulty() {
    return miningDifficulty
}

function getTxFeeRatio() {
    return txFeeRatio
}

function sub_306ed47b(?) {
    return sub_306ed47b
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

function sub_a5b6260e(?) {
    return bool(sub_a5b6260e)
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

function sub_d41620d1(?) {
    return address(sub_d41620d1Address)
}

function sub_e87ba7aa(?) {
    require calldata.size - 4 >= 32
    return bool(stor54[arg1])
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
    require arg1 + arg1.length + 36 <= calldata.size
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
        call address(stor53[arg1].field_512).safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, stor53[arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Claimed(msg.sender, arg1);
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        governorAddress = arg1
        emit GovernorshipTransferred(0, arg1);
        txFeeRatio = 10^16
        minValueOfBotHolder = 10^17
        sub_306ed47b = 0
        miningDifficulty = 3 * 10^18
        sub_a5b6260e = 0
        uint256(stor3A5C) = 0x5beabaebb3146685dd74176f68a0721f91297d37
        uint256(storC81F) = 0x73282a63f0e3d7e9604575420f777361eca3c86a
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        if uint8(stor0.field_8):
            governorAddress = arg1
            emit GovernorshipTransferred(0, arg1);
            txFeeRatio = 10^16
            minValueOfBotHolder = 10^17
            sub_306ed47b = 0
            miningDifficulty = 3 * 10^18
            sub_a5b6260e = 0
            uint256(stor3A5C) = 0x5beabaebb3146685dd74176f68a0721f91297d37
            uint256(storC81F) = 0x73282a63f0e3d7e9604575420f777361eca3c86a
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
                txFeeRatio = 10^16
                minValueOfBotHolder = 10^17
                sub_306ed47b = 0
                miningDifficulty = 3 * 10^18
                sub_a5b6260e = 0
                uint256(stor3A5C) = 0x5beabaebb3146685dd74176f68a0721f91297d37
                uint256(storC81F) = 0x73282a63f0e3d7e9604575420f777361eca3c86a
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                governorAddress = arg1
                emit GovernorshipTransferred(0, arg1);
                uint8(stor0.field_8) = 0
                txFeeRatio = 10^16
                minValueOfBotHolder = 10^17
                sub_306ed47b = 0
                miningDifficulty = 3 * 10^18
                sub_a5b6260e = 0
                uint256(stor3A5C) = 0x5beabaebb3146685dd74176f68a0721f91297d37
                uint256(storC81F) = 0x73282a63f0e3d7e9604575420f777361eca3c86a
                uint8(stor0.field_8) = 0
}

function sub_e94ab775(?) payable {
    require calldata.size - 4 >= 256
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == address(arg2)
    require arg7 == bool(arg7)
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
    if not arg5:
        revert with 0, 'the value of amountMinIncr1 is zero'
    if arg6 < 300:
        revert with 0, 'the value of confirmTime less than 5 minutes'
    if arg6 > 24 * 3600:
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
    call address(arg2).safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg6 + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if arg7:
        stor55[stor53.length] = uint8(bool(arg7))
    if arg8:
        sub_72d774c3[stor53.length] = arg8
    stor53.length++
    storCFA4[stor53.length] = msg.sender
    stor[sha3((10 * stor53.length) - 0x305b413e2cd67bf744a50303263bcfab63a4ce0755a3a7b7eae3f5aa0b8c3cb2)][] = Array(len=arg1.length, data=arg1[all])
    storCFA4[stor53.length] = address(arg2)
    storCFA4[stor53.length] = arg3
    storCFA4[stor53.length] = 1
    storCFA4[stor53.length] = arg4
    storCFA4[stor53.length] = arg5
    storCFA4[stor53.length] = arg6
    storCFA4[stor53.length] = arg6 + block.timestamp
    storCFA4[stor53.length] = 0
    sub_bbe7180d[address(msg.sender)] = stor53.length
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 640 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 640] = 60
    stor[mem[(2 * ceil32(arg1.length)) + ceil32(return_data.size) + 640 len arg1.length + -ceil32(arg1.length) + 32]][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256] = stor53.length
    emit 0xf954cec4: 32, msg.sender, 320, arg2 << 192, arg3, 1, arg4, arg5, arg6, arg6 + block.timestamp, 0, arg1.length, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
}

function sub_d9be7d28(?) payable {
    require calldata.size - 4 >= 288
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == address(arg2)
    require arg8 == bool(arg8)
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

function creatorClaim(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= stor53.length:
        revert with 0, 'this pool does not exist'
    if stor53[arg1].field_2048 > block.timestamp:
        revert with 0, 'this pool is not closed'
    require arg1 < stor53.length
    if address(stor53[arg1].field_0) != msg.sender:
        revert with 0, 'sender is not pool creator'
    if stor54[arg1]:
        revert with 0, 'creator has claimed this pool'
    stor54[arg1] = 1
    sub_bbe7180d[address(msg.sender)] = 0
    mem[96] = 0
    mem[128] = 96
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    require arg1 < stor53.length
    mem[416] = address(stor53[arg1].field_0)
    mem[736] = stor[('name', 'stor53', 53) + (10 * arg1) + 1].length
    mem[768] = stor[sha3(('name', 'stor53', 53) + (10 * arg1) + 1)].field_0
    idx = 768
    s = 0
    while stor[('name', 'stor53', 53) + (10 * arg1) + 1].length + 736 > idx:
        mem[idx + 32] = stor[s + sha3(('name', 'stor53', 53) + (10 * arg1) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[448] = 736
    mem[480] = address(stor53[arg1].field_512)
    mem[512] = stor53[arg1].field_768
    mem[544] = stor53[arg1].field_1024
    mem[576] = stor53[arg1].field_1280
    mem[608] = stor53[arg1].field_1536
    mem[640] = stor53[arg1].field_1792
    mem[672] = stor53[arg1].field_2048
    mem[704] = stor53[arg1].field_2304
    if not sub_f5639ff5[arg1]:
        require ext_code.size(address(stor53[arg1].field_512))
        if stor53[arg1].field_2304:
            call address(stor53[arg1].field_512).safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                 gas gas_remaining wei
                args address(this.address), address(stor53[arg1].field_0), stor53[arg1].field_768, stor53[arg1].field_1024, 160, 0
        else:
            call address(stor53[arg1].field_512).safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args address(this.address), address(stor53[arg1].field_0), stor53[arg1].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if sub_64cc79bd[arg1]:
            if not sub_64cc79bd[arg1]:
                if 0 > sub_64cc79bd[arg1]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_64cc79bd[arg1] >= miningDifficulty:
                    require ext_code.size(address(sub_d41620d1Address))
                    call address(sub_d41620d1Address).0xba167067 with:
                         gas gas_remaining wei
                        args address(stor53[arg1].field_0)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(sub_d41620d1Address))
                    call address(sub_d41620d1Address).0xba167067 with:
                         gas gas_remaining wei
                        args address(stor53[arg1].field_0)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(sub_d41620d1Address))
                    call address(sub_d41620d1Address).0xba167067 with:
                         gas gas_remaining wei
                        args address(stor53[arg1].field_0)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if sub_64cc79bd[arg1]:
                    call address(stor53[arg1].field_0) with:
                       value sub_64cc79bd[arg1] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if txFeeRatio * sub_64cc79bd[arg1] / sub_64cc79bd[arg1] != txFeeRatio:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 768] = 26
                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 800] = 'SafeMath: division by zero'
                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 832] = 30
                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 864] = 'SafeMath: subtraction overflow'
                if txFeeRatio * sub_64cc79bd[arg1] / 10^18 > sub_64cc79bd[arg1]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_64cc79bd[arg1] < miningDifficulty:
                    if not sub_64cc79bd[arg1] - (txFeeRatio * sub_64cc79bd[arg1] / 10^18):
                        if txFeeRatio * sub_64cc79bd[arg1] / 10^18:
                            if sub_a5b6260e:
                                require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                                staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.WETH() with:
                                        gas gas_remaining wei
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 992] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 992
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require 0 < mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 896]
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 928] = ext_call.return_data[12 len 20]
                                mem[0] = 0x45414e46543a3a426f74546f6b656e0000000000000000000000000000000000
                                mem[32] = 52
                                require 1 < mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 896]
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 960] = address(botTokenAddress)
                                if block.timestamp + 1200 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 992] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 996] = 0
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 1028] = 128
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 1124] = mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 896]
                                idx = 0
                                s = ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 1156
                                t = ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 928
                                while idx < mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 896]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 1060] = 57005
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 1092] = block.timestamp + 1200
                                require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                                call 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                                   value txFeeRatio * sub_64cc79bd[arg1] / 10^18 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + (32 * mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 896]) + -mem[64] + 1152]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _769 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_769] <= test266151307()
                                require _769 + return_data.size > _769 + mem[_769] + 31
                                require mem[_769 + mem[_769]] <= test266151307()
                                require (32 * mem[_769 + mem[_769]]) + 32 >= 0 and _769 + ceil32(return_data.size) + (32 * mem[_769 + mem[_769]]) + 32 <= test266151307()
                                require return_data.size >= mem[_769] + (32 * mem[_769 + mem[_769]]) + 32
                    else:
                        call address(stor53[arg1].field_0) with:
                           value sub_64cc79bd[arg1] - (txFeeRatio * sub_64cc79bd[arg1] / 10^18) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if txFeeRatio * sub_64cc79bd[arg1] / 10^18:
                            if sub_a5b6260e:
                                require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                                staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.WETH() with:
                                        gas gas_remaining wei
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 992] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 992
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require 0 < mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 896]
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 928] = ext_call.return_data[12 len 20]
                                mem[0] = 0x45414e46543a3a426f74546f6b656e0000000000000000000000000000000000
                                mem[32] = 52
                                require 1 < mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 896]
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 960] = address(botTokenAddress)
                                if block.timestamp + 1200 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 992] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 996] = 0
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 1028] = 128
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 1124] = mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 896]
                                idx = 0
                                s = ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 1156
                                t = ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 928
                                while idx < mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 896]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 1060] = 57005
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 1092] = block.timestamp + 1200
                                require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                                call 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                                   value txFeeRatio * sub_64cc79bd[arg1] / 10^18 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + (32 * mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 896]) + -mem[64] + 1152]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _770 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_770] <= test266151307()
                                require _770 + return_data.size > _770 + mem[_770] + 31
                                require mem[_770 + mem[_770]] <= test266151307()
                                require (32 * mem[_770 + mem[_770]]) + 32 >= 0 and _770 + ceil32(return_data.size) + (32 * mem[_770 + mem[_770]]) + 32 <= test266151307()
                                require return_data.size >= mem[_770] + (32 * mem[_770 + mem[_770]]) + 32
                else:
                    require ext_code.size(address(sub_d41620d1Address))
                    call address(sub_d41620d1Address).0xba167067 with:
                         gas gas_remaining wei
                        args address(stor53[arg1].field_0)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(sub_d41620d1Address))
                    call address(sub_d41620d1Address).0xba167067 with:
                         gas gas_remaining wei
                        args address(stor53[arg1].field_0)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 896] = 0xba16706700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 900] = address(stor53[arg1].field_0)
                    require ext_code.size(address(sub_d41620d1Address))
                    call address(sub_d41620d1Address).0xba167067 with:
                         gas gas_remaining wei
                        args address(stor53[arg1].field_0)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not sub_64cc79bd[arg1] - (txFeeRatio * sub_64cc79bd[arg1] / 10^18):
                        if txFeeRatio * sub_64cc79bd[arg1] / 10^18:
                            if sub_a5b6260e:
                                require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                                staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.WETH() with:
                                        gas gas_remaining wei
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 992] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 992
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require 0 < 0, Mask(224, 0, stor53[arg1].field_0)
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 928] = ext_call.return_data[12 len 20]
                                mem[0] = 0x45414e46543a3a426f74546f6b656e0000000000000000000000000000000000
                                mem[32] = 52
                                require 1 < 0, Mask(224, 0, stor53[arg1].field_0)
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 960] = address(botTokenAddress)
                                if block.timestamp + 1200 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 992] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 996] = 0
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 1028] = 128
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 1124] = 0, Mask(224, 0, stor53[arg1].field_0)
                                idx = 0
                                s = ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 1156
                                t = ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 928
                                while idx < 0, mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 900 len 28]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 1060] = 57005
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 1092] = block.timestamp + 1200
                                require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                                call 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value txFeeRatio * sub_64cc79bd[arg1] / 10^18 wei
                                     gas gas_remaining wei
                                    args 0, 128, 57005, block.timestamp + 1200, mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 1124 len (32 * 0, mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 900 len 28]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + (2 * ceil32(return_data.size)) + 992
                                require return_data.size >= 32
                                require mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 992] <= test266151307()
                                require ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + return_data.size + 992 > ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 992] + 1023
                                require mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 992] + 992] <= test266151307()
                                require (32 * mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 992] + 992]) + 32 >= 0 and ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + (2 * ceil32(return_data.size)) + (32 * mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 992] + 992]) + 1024 <= test266151307()
                                require return_data.size >= mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 992] + (32 * mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 992] + 992]) + 32
                    else:
                        call address(stor53[arg1].field_0) with:
                           value sub_64cc79bd[arg1] - (txFeeRatio * sub_64cc79bd[arg1] / 10^18) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if txFeeRatio * sub_64cc79bd[arg1] / 10^18:
                            if sub_a5b6260e:
                                require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                                staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.WETH() with:
                                        gas gas_remaining wei
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 992] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 992
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require 0 < 0, Mask(224, 0, stor53[arg1].field_0)
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 928] = ext_call.return_data[12 len 20]
                                mem[0] = 0x45414e46543a3a426f74546f6b656e0000000000000000000000000000000000
                                mem[32] = 52
                                require 1 < 0, Mask(224, 0, stor53[arg1].field_0)
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 960] = address(botTokenAddress)
                                if block.timestamp + 1200 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 992] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 996] = 0
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 1028] = 128
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 1124] = 0, Mask(224, 0, stor53[arg1].field_0)
                                idx = 0
                                s = ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 1156
                                t = ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 928
                                while idx < 0, mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 900 len 28]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 1060] = 57005
                                mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + 1092] = block.timestamp + 1200
                                require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                                call 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                                   value txFeeRatio * sub_64cc79bd[arg1] / 10^18 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + ceil32(return_data.size) + (32 * 0, mem[ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 900 len 28]) + -mem[64] + 1152]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _772 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_772] <= test266151307()
                                require _772 + return_data.size > _772 + mem[_772] + 31
                                require mem[_772 + mem[_772]] <= test266151307()
                                require (32 * mem[_772 + mem[_772]]) + 32 >= 0 and _772 + ceil32(return_data.size) + (32 * mem[_772 + mem[_772]]) + 32 <= test266151307()
                                require return_data.size >= mem[_772] + (32 * mem[_772 + mem[_772]]) + 32
    emit Claimed(msg.sender, arg1);
}



}
