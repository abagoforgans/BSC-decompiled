contract main {




// =====================  Runtime code  =====================


#
#  - sub_a0d5bc2d(?)
#
address governorAddress;
mapping of uint256 config;
array of struct stor53;
mapping of uint256 sub_72d774c3;
mapping of uint8 stor55;
mapping of uint8 stor56;
array of address sub_4878351b;
array of uint256 sub_babd8af7;
mapping of uint256 sub_4f502c75;
mapping of uint256 sub_29a65f8f;
mapping of uint256 sub_7416dcd6;
mapping of uint8 stor63;
mapping of uint256 sub_bbe7180d;
mapping of uint256 stor65;
array of uint256 stor99;
uint256 txFeeRatio;
uint256 sub_306ed47b;
uint256 minValueOfBotHolder;
uint256 miningDifficulty;
array of address stor93919839132673366524933561348464307323150594581428697006173117430883306160973;
array of address stor93919839132673366524933561348464307323150594581428697006173117430883306160975;
array of uint256 stor93919839132673366524933561348464307323150594581428697006173117430883306160976;
array of uint256 stor93919839132673366524933561348464307323150594581428697006173117430883306160977;
array of uint256 stor93919839132673366524933561348464307323150594581428697006173117430883306160978;
array of uint256 stor93919839132673366524933561348464307323150594581428697006173117430883306160979;
array of uint256 stor93919839132673366524933561348464307323150594581428697006173117430883306160980;
address botTokenAddress;
uint256 storE5E0;
uint256 sub_a5b6260e;
address sub_d41620d1Address;
uint256 storEC5F;

function governor() {
    return governorAddress
}

function getMiningDifficulty() {
    return miningDifficulty
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

function sub_4878351b(?) {
    require calldata.size - 4 >= 32
    return uint256(sub_4878351b[arg1])
}

function sub_4f502c75(?) {
    require calldata.size - 4 >= 32
    return sub_4f502c75[arg1]
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

function getConfig(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return config[arg1]
}

function sub_72d774c3(?) {
    require calldata.size - 4 >= 32
    return sub_72d774c3[arg1]
}

function sub_7416dcd6(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_7416dcd6[arg1][arg2]
}

function sub_864ce6b2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_507a0a3d[address(arg1)]
}

function getConfig(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return config[arg2 xor arg1]
}

function getPoolCount() {
    return stor53.length
}

function sub_9a9183a0(?) {
    require calldata.size - 4 >= 64
    require arg2 < uint256(sub_4878351b[arg1])
    return address(sub_4878351b[arg1][arg2])
}

function sub_a5b6260e(?) {
    return bool(sub_a5b6260e)
}

function sub_babd8af7(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_babd8af7[arg1]
    return sub_babd8af7[arg1][arg2]
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
    return bool(stor56[arg1])
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

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        if governorAddress:
            revert with 0, 'invalid governor'
    governorAddress = arg1
    txFeeRatio = 15 * 10^15
    minValueOfBotHolder = 10^17
    sub_306ed47b = 0
    miningDifficulty = 50 * 10^18
    sub_a5b6260e = 0
    uint256(storE5E0) = 0x48dc0190df5ece990c649a7a07ba19d3650a9572
    uint256(storEC5F) = 0x4fc4bfedc5c82644514facf716c7f888a0c73ccc
}

function sub_9d6ce84b(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = stor65[arg1[all]]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function pools(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor53.length
    mem[128] = stor[sha3((8 * arg1) + ('name', 'stor53', 53) + 1)].field_0
    idx = 128
    s = 0
    while stor[(8 * arg1) + ('name', 'stor53', 53) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor53', 53) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor53[arg1].field_0), 
           Array(len=stor[(8 * arg1) + ('name', 'stor53', 53) + 1].length, data=mem[128 len ceil32(stor[(8 * arg1) + ('name', 'stor53', 53) + 1].length)]),
           address(stor53[arg1].field_512),
           stor53[arg1].field_768,
           stor53[arg1].field_1024,
           stor53[arg1].field_1280,
           stor53[arg1].field_1536,
           stor53[arg1].field_1792
}

function sub_b97d9f02(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if arg2 >= sub_507a0a3d[address(arg1)]:
        mem[160 len 1024] = 32, mem[160 len 992]
        return 32, 32, mem[160 len 1024]
    if arg3:
        if arg3 + arg2 < arg2:
            revert with 0, 'SafeMath: addition overflow'
        if arg3 + arg2 <= sub_507a0a3d[address(arg1)]:
            require arg3 <= test266151307()
            if arg3:
                mem[128 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
            idx = 0
            while idx < arg3:
                mem[32] = 61
                require idx + arg2 < sub_507a0a3d[address(arg1)]
                mem[0] = sha3(address(arg1), 61)
                require idx < arg3
                mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_507a0a3d', 61)) + idx + arg2]
                idx = idx + 1
                continue 
            return Array(len=arg3, data=mem[128 len 32 * arg3])
    if arg2 > sub_507a0a3d[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    require sub_507a0a3d[address(arg1)] - arg2 <= test266151307()
    mem[160] = sub_507a0a3d[address(arg1)] - arg2
    if sub_507a0a3d[address(arg1)] - arg2:
        mem[192 len 32 * sub_507a0a3d[address(arg1)] - arg2] = call.data[calldata.size len 32 * sub_507a0a3d[address(arg1)] - arg2]
    idx = 0
    while idx < sub_507a0a3d[address(arg1)] - arg2:
        mem[32] = 61
        require idx + arg2 < sub_507a0a3d[address(arg1)]
        mem[0] = sha3(address(arg1), 61)
        require idx < mem[160]
        mem[(32 * idx) + 192] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_507a0a3d', 61)) + idx + arg2]
        idx = idx + 1
        continue 
    mem[(32 * sub_507a0a3d[address(arg1)] - arg2) + 192] = 32
    mem[(32 * sub_507a0a3d[address(arg1)] - arg2) + 224] = mem[160]
    mem[(32 * sub_507a0a3d[address(arg1)] - arg2) + 256 len 32 * mem[160]] = mem[192 len 32 * mem[160]]
    return 32, mem[(32 * sub_507a0a3d[address(arg1)] - arg2) + 224 len (32 * mem[160]) + 32]
}

function bidderClaim(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= stor53.length:
        revert with 0, 'this pool does not exist'
    if stor53[arg1].field_1536 > block.timestamp:
        revert with 0, 'this pool is not closed'
    if stor63[msg.sender][arg1]:
        revert with 0, 'sender has claimed this pool'
    if not sub_7416dcd6[address(msg.sender)][arg1]:
        revert with 0, 'sender didn't bid this pool'
    if -1 == sub_4f502c75[arg1]:
        revert with 0, 'sender didn't bid this pool'
    stor63[address(msg.sender)][arg1] = 1
    require arg1 < stor53.length
    idx = 640
    s = 0
    while stor[('name', 'stor53', 53) + (8 * arg1) + 1].length + 608 > idx:
        mem[idx + 32] = stor[s + sha3(('name', 'stor53', 53) + (8 * arg1) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require sub_4f502c75[arg1] < uint256(sub_4878351b[arg1])
    if address(sub_4878351b[arg1][stor59[arg1]]) != msg.sender:
        call msg.sender with:
           value sub_7416dcd6[address(msg.sender)][arg1] wei
             gas 2300 * is_zero(value) wei
    else:
        require ext_code.size(address(stor53[arg1].field_512))
        if stor53[arg1].field_1792:
            call address(stor53[arg1].field_512).safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                 gas gas_remaining wei
                args address(this.address), address(sub_4878351b[arg1][stor59[arg1]]), stor53[arg1].field_768, stor53[arg1].field_1024, 160, 0
        else:
            call address(stor53[arg1].field_512).safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args address(this.address), address(sub_4878351b[arg1][stor59[arg1]]), stor53[arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(sub_d41620d1Address))
    call address(sub_d41620d1Address).0xba167067 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Claimed(msg.sender, arg1);
}

function sub_d100d164(?) payable {
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
    mem[arg1.length + ceil32(arg1.length) + 320] = 65
    if stor[mem[(2 * ceil32(arg1.length)) + 320 len arg1.length + -ceil32(arg1.length) + 32]][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256] > 0:
        mem[ceil32(arg1.length) + 320 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(arg1.length) + 320] = 65
        require stor[mem[(2 * ceil32(arg1.length)) + 320 len arg1.length + -ceil32(arg1.length) + 32]][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256] - 1 < stor53.length
        if sub_bbe7180d[address(stor53[stor[mem[(2 * ceil32(arg1.length)) + 320 len arg1.length + -ceil32(arg1.length) + 32]][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256] - 1].field_0)] > 0:
            require stor[mem[(2 * ceil32(arg1.length)) + 320 len arg1.length + -ceil32(arg1.length) + 32]][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256] - 1 < stor53.length
            if stor53[stor[mem[(2 * ceil32(arg1.length)) + 320 len arg1.length + -ceil32(arg1.length) + 32]][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256] - 1].field_1536 > block.timestamp:
                revert with 0, 'a live pool has been created by this name'
    if not arg5:
        revert with 0, 'the value of amountMin1 is zero'
    if not arg6:
        revert with 0, 'the value of duration is zero'
    if arg6 > 720 * 24 * 3600:
        revert with 0, 'the value of duration is exceeded 30 days'
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
    if arg6 + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if arg7:
        stor55[stor53.length] = uint8(bool(arg7))
    if arg8:
        sub_72d774c3[stor53.length] = arg8
    stor53.length++
    storCFA4[stor53.length] = msg.sender
    stor[sha3((8 * stor53.length) - 0x305b413e2cd67bf744a50303263bcfab63a4ce0755a3a7b7eae3f5aa0b8c3cb2)][] = Array(len=arg1.length, data=arg1[all])
    storCFA4[stor53.length] = address(arg2)
    storCFA4[stor53.length] = arg3
    storCFA4[stor53.length] = arg4
    storCFA4[stor53.length] = arg5
    storCFA4[stor53.length] = arg6 + block.timestamp
    storCFA4[stor53.length] = 1
    sub_bbe7180d[address(msg.sender)] = stor53.length
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 576 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 576] = 65
    stor[mem[(2 * ceil32(arg1.length)) + ceil32(return_data.size) + 576 len arg1.length + -ceil32(arg1.length) + 32]][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256] = stor53.length
    sub_4f502c75[stor53.length] = -1
    emit 0x48733835: 32, msg.sender, 256, arg2 << 192, arg3, arg4, arg5, arg6 + block.timestamp, 1, arg1.length, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
}

function creatorClaim(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= stor53.length:
        revert with 0, 'this pool does not exist'
    if stor53[arg1].field_1536 > block.timestamp:
        revert with 0, 'this pool is not closed'
    require arg1 < stor53.length
    if address(stor53[arg1].field_0) != msg.sender:
        revert with 0, 'sender is not pool creator'
    if stor56[arg1]:
        revert with 0, 'creator has claimed this pool'
    stor56[arg1] = 1
    sub_bbe7180d[address(msg.sender)] = 0
    mem[96] = 0
    mem[128] = 96
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    require arg1 < stor53.length
    mem[352] = address(stor53[arg1].field_0)
    mem[608] = stor[('name', 'stor53', 53) + (8 * arg1) + 1].length
    mem[640] = stor[sha3(('name', 'stor53', 53) + (8 * arg1) + 1)].field_0
    idx = 640
    s = 0
    while stor[('name', 'stor53', 53) + (8 * arg1) + 1].length + 608 > idx:
        mem[idx + 32] = stor[s + sha3(('name', 'stor53', 53) + (8 * arg1) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[384] = 608
    mem[416] = address(stor53[arg1].field_512)
    mem[448] = stor53[arg1].field_768
    mem[480] = stor53[arg1].field_1024
    mem[512] = stor53[arg1].field_1280
    mem[544] = stor53[arg1].field_1536
    mem[576] = stor53[arg1].field_1792
    if -1 == sub_4f502c75[arg1]:
        require ext_code.size(address(stor53[arg1].field_512))
        if stor53[arg1].field_1792:
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
        require sub_4f502c75[arg1] < uint256(sub_4878351b[arg1])
        if sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1] < miningDifficulty:
            if not sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1]:
                if 0 > sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1]:
                    call msg.sender with:
                       value sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if txFeeRatio * sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1] / sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1] != txFeeRatio:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 640] = 26
                mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 672] = 'SafeMath: division by zero'
                mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 704] = 30
                mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 736] = 'SafeMath: subtraction overflow'
                if txFeeRatio * sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1] / 10^18 > sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1] - (txFeeRatio * sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1] / 10^18):
                    call msg.sender with:
                       value sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1] - (txFeeRatio * sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1] / 10^18) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if txFeeRatio * sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1] / 10^18:
                    if sub_a5b6260e:
                        require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                        staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 864] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + 864
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require 0 < mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 768]
                        mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 800] = ext_call.return_data[12 len 20]
                        mem[0] = 0x53424e46543a3a426f74546f6b656e0000000000000000000000000000000000
                        mem[32] = 52
                        require 1 < mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 768]
                        mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 832] = address(botTokenAddress)
                        if block.timestamp + 1200 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + 864] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + 868] = 0
                        mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + 900] = 128
                        mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + 996] = mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 768]
                        idx = 0
                        s = ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + 1028
                        t = ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 800
                        while idx < mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 768]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + 932] = 57005
                        mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + 964] = block.timestamp + 1200
                        require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                        call 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                           value txFeeRatio * sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1] / 10^18 wei
                             gas gas_remaining wei
                            args 0, 128, 57005, block.timestamp + 1200, mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + 996 len (32 * mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 768]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + 864 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + (2 * ceil32(return_data.size)) + 864
                        require return_data.size >= 32
                        require mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + 864 len 4], 0 <= test266151307()
                        require ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + return_data.size + 864 > ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + 864 len 4], 0 + 895
                        require mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + 864 len 4], 0 + 864] <= test266151307()
                        require (32 * mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + 864 len 4], 0 + 864]) + 32 >= 0 and ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + (2 * ceil32(return_data.size)) + (32 * mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + 864 len 4], 0 + 864]) + 896 <= test266151307()
                        require return_data.size >= mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + 864 len 4], 0 + (32 * mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + 864 len 4], 0 + 864]) + 32
        else:
            require ext_code.size(address(sub_d41620d1Address))
            call address(sub_d41620d1Address).0xba167067 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(sub_d41620d1Address))
            call address(sub_d41620d1Address).0xba167067 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(sub_d41620d1Address))
            call address(sub_d41620d1Address).0xba167067 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1]:
                if 0 > sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1]:
                    call msg.sender with:
                       value sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if txFeeRatio * sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1] / sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1] != txFeeRatio:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 640] = 26
                mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 672] = 'SafeMath: division by zero'
                mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 704] = 30
                mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 736] = 'SafeMath: subtraction overflow'
                if txFeeRatio * sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1] / 10^18 > sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1] - (txFeeRatio * sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1] / 10^18):
                    if txFeeRatio * sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1] / 10^18:
                        if sub_a5b6260e:
                            require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                            staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 864] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + 864
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require 0 < mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 768]
                            mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 800] = ext_call.return_data[12 len 20]
                            mem[0] = 0x53424e46543a3a426f74546f6b656e0000000000000000000000000000000000
                            mem[32] = 52
                            require 1 < mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 768]
                            mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 832] = address(botTokenAddress)
                            if block.timestamp + 1200 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + 864] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + 868] = 0
                            mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + 900] = 128
                            mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + 996] = mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 768]
                            idx = 0
                            s = ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + 1028
                            t = ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 800
                            while idx < mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 768]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + 932] = 57005
                            mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + 964] = block.timestamp + 1200
                            require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                            call 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                               value txFeeRatio * sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1] / 10^18 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + (32 * mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 768]) + -mem[64] + 1024]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _813 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_813] <= test266151307()
                            require _813 + return_data.size > _813 + mem[_813] + 31
                            require mem[_813 + mem[_813]] <= test266151307()
                            require (32 * mem[_813 + mem[_813]]) + 32 >= 0 and _813 + ceil32(return_data.size) + (32 * mem[_813 + mem[_813]]) + 32 <= test266151307()
                            require return_data.size >= mem[_813] + (32 * mem[_813 + mem[_813]]) + 32
                else:
                    call msg.sender with:
                       value sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1] - (txFeeRatio * sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1] / 10^18) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if txFeeRatio * sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1] / 10^18:
                        if sub_a5b6260e:
                            require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                            staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 864] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + 864
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require 0 < mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 768]
                            mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 800] = ext_call.return_data[12 len 20]
                            mem[0] = 0x53424e46543a3a426f74546f6b656e0000000000000000000000000000000000
                            mem[32] = 52
                            require 1 < mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 768]
                            mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 832] = address(botTokenAddress)
                            if block.timestamp + 1200 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + 864] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + 868] = 0
                            mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + 900] = 128
                            mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + 996] = mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 768]
                            idx = 0
                            s = ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + 1028
                            t = ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 800
                            while idx < mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 768]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + 932] = 57005
                            mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + 964] = block.timestamp + 1200
                            require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                            call 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                               value txFeeRatio * sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1] / 10^18 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + ceil32(return_data.size) + (32 * mem[ceil32(stor[('name', 'stor53', 53) + (8 * arg1) + 1].length) + 768]) + -mem[64] + 1024]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _814 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_814] <= test266151307()
                            require _814 + return_data.size > _814 + mem[_814] + 31
                            require mem[_814 + mem[_814]] <= test266151307()
                            require (32 * mem[_814 + mem[_814]]) + 32 >= 0 and _814 + ceil32(return_data.size) + (32 * mem[_814 + mem[_814]]) + 32 <= test266151307()
                            require return_data.size >= mem[_814] + (32 * mem[_814 + mem[_814]]) + 32
    emit Claimed(msg.sender, arg1);
}

function sub_e3fb5f04(?) payable {
    require calldata.size - 4 >= 288
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require ceil32(('cd', 4).length) + 128 >= 96 and ceil32(('cd', 4).length) + 128 <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    mem[128 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[('cd', 4).length + 128] = 0
    require cd[36] == address(cd[36])
    require calldata.size > 99
    require bool(ceil32(('cd', 4).length) + 224 <= test266151307())
    require 164 <= calldata.size
    idx = 0
    s = 68
    t = ceil32(('cd', 4).length) + 128
    while idx < 3:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[196] == bool(cd[196])
    if sub_bbe7180d[msg.sender]:
        revert with 0, 'a pool has created by this address'
    mem[ceil32(('cd', 4).length) + 224 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
    mem[('cd', 4).length + ceil32(('cd', 4).length) + 224] = 65
    if ceil32(('cd', 4).length) <= ('cd', 4).length:
        if stor[mem[(2 * ceil32(('cd', 4).length)) + 224 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256] <= 0:
            if not mem[ceil32(('cd', 4).length) + 192]:
                revert with 0, 'the value of amountMin1 is zero'
            if not cd[164]:
                revert with 0, 'the value of duration is zero'
            if cd[164] > 720 * 24 * 3600:
                revert with 0, 'the value of duration is exceeded 30 days'
            if ('cd', 4).length > 15:
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
            require ext_code.size(address(cd[36]))
            if cd[260]:
                call address(cd[36]).safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), mem[ceil32(('cd', 4).length) + 128], mem[ceil32(('cd', 4).length) + 160], 160, 0
            else:
                call address(cd[36]).safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), mem[ceil32(('cd', 4).length) + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if cd[164] + block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            if not cd[196]:
                if not cd[228]:
                    stor53.length++
                    storCFA4[stor53.length] = msg.sender
                    stor[sha3((8 * stor53.length) - 0x305b413e2cd67bf744a50303263bcfab63a4ce0755a3a7b7eae3f5aa0b8c3cb2)][] = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
                    storCFA4[stor53.length] = address(cd[36])
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 128]
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 160]
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 192]
                    storCFA4[stor53.length] = cd[164] + block.timestamp
                    storCFA4[stor53.length] = cd[260]
                    sub_bbe7180d[address(msg.sender)] = stor53.length
                    mem[ceil32(('cd', 4).length) + ceil32(return_data.size) + 480 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
                    mem[('cd', 4).length + ceil32(('cd', 4).length) + ceil32(return_data.size) + 480] = 65
                    stor[mem[(2 * ceil32(('cd', 4).length)) + ceil32(return_data.size) + 480 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256] = stor53.length
                    sub_4f502c75[stor53.length] = -1
                    if ceil32(('cd', 4).length) <= ('cd', 4).length:
                        var93001 = ceil32(('cd', 4).length)
                    else:
                        var94001 = ceil32(('cd', 4).length)
                else:
                    sub_72d774c3[stor53.length] = cd[228]
                    stor53.length++
                    storCFA4[stor53.length] = msg.sender
                    stor[sha3((8 * stor53.length) - 0x305b413e2cd67bf744a50303263bcfab63a4ce0755a3a7b7eae3f5aa0b8c3cb2)][] = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
                    storCFA4[stor53.length] = address(cd[36])
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 128]
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 160]
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 192]
                    storCFA4[stor53.length] = cd[164] + block.timestamp
                    storCFA4[stor53.length] = cd[260]
                    sub_bbe7180d[address(msg.sender)] = stor53.length
                    mem[ceil32(('cd', 4).length) + ceil32(return_data.size) + 480 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
                    mem[('cd', 4).length + ceil32(('cd', 4).length) + ceil32(return_data.size) + 480] = 65
                    stor[mem[(2 * ceil32(('cd', 4).length)) + ceil32(return_data.size) + 480 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256] = stor53.length
                    sub_4f502c75[stor53.length] = -1
                    if ceil32(('cd', 4).length) <= ('cd', 4).length:
                        var94001 = ceil32(('cd', 4).length)
                    else:
                        var95001 = ceil32(('cd', 4).length)
            else:
                stor55[stor53.length] = uint8(bool(cd[196]))
                if not cd[228]:
                    stor53.length++
                    storCFA4[stor53.length] = msg.sender
                    stor[sha3((8 * stor53.length) - 0x305b413e2cd67bf744a50303263bcfab63a4ce0755a3a7b7eae3f5aa0b8c3cb2)][] = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
                    storCFA4[stor53.length] = address(cd[36])
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 128]
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 160]
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 192]
                    storCFA4[stor53.length] = cd[164] + block.timestamp
                    storCFA4[stor53.length] = cd[260]
                    sub_bbe7180d[address(msg.sender)] = stor53.length
                    mem[ceil32(('cd', 4).length) + ceil32(return_data.size) + 480 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
                    mem[('cd', 4).length + ceil32(('cd', 4).length) + ceil32(return_data.size) + 480] = 65
                    stor[mem[(2 * ceil32(('cd', 4).length)) + ceil32(return_data.size) + 480 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256] = stor53.length
                    sub_4f502c75[stor53.length] = -1
                    if ceil32(('cd', 4).length) <= ('cd', 4).length:
                        var94001 = ceil32(('cd', 4).length)
                    else:
                        var95001 = ceil32(('cd', 4).length)
                else:
                    sub_72d774c3[stor53.length] = cd[228]
                    stor53.length++
                    storCFA4[stor53.length] = msg.sender
                    stor[sha3((8 * stor53.length) - 0x305b413e2cd67bf744a50303263bcfab63a4ce0755a3a7b7eae3f5aa0b8c3cb2)][] = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
                    storCFA4[stor53.length] = address(cd[36])
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 128]
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 160]
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 192]
                    storCFA4[stor53.length] = cd[164] + block.timestamp
                    storCFA4[stor53.length] = cd[260]
                    sub_bbe7180d[address(msg.sender)] = stor53.length
                    mem[ceil32(('cd', 4).length) + ceil32(return_data.size) + 480 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
                    var86001 = ceil32(('cd', 4).length)
                    mem[('cd', 4).length + ceil32(('cd', 4).length) + ceil32(return_data.size) + 480] = 65
                    stor[mem[(2 * ceil32(('cd', 4).length)) + ceil32(return_data.size) + 480 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256] = stor53.length
                    sub_4f502c75[stor53.length] = -1
                    if ceil32(('cd', 4).length) > ('cd', 4).length:
                    else:
                        var95001 = ceil32(('cd', 4).length)
        else:
            mem[ceil32(('cd', 4).length) + 224 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
            mem[('cd', 4).length + ceil32(('cd', 4).length) + 224] = 65
            require stor[mem[(2 * ceil32(('cd', 4).length)) + 224 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256] - 1 < stor53.length
            if sub_bbe7180d[address(stor53[stor[mem[(2 * ceil32(('cd', 4).length)) + 224 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256] - 1].field_0)] > 0:
                require stor[mem[(2 * ceil32(('cd', 4).length)) + 224 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256] - 1 < stor53.length
                if stor53[stor[mem[(2 * ceil32(('cd', 4).length)) + 224 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256] - 1].field_1536 > block.timestamp:
                    revert with 0, 'a live pool has been created by this name'
            if not mem[ceil32(('cd', 4).length) + 192]:
                revert with 0, 'the value of amountMin1 is zero'
            if not cd[164]:
                revert with 0, 'the value of duration is zero'
            if cd[164] > 720 * 24 * 3600:
                revert with 0, 'the value of duration is exceeded 30 days'
            if ('cd', 4).length > 15:
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
            require ext_code.size(address(cd[36]))
            if cd[260]:
                call address(cd[36]).safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), mem[ceil32(('cd', 4).length) + 128], mem[ceil32(('cd', 4).length) + 160], 160, 0
            else:
                call address(cd[36]).safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), mem[ceil32(('cd', 4).length) + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if cd[164] + block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            if cd[196]:
                stor55[stor53.length] = uint8(bool(cd[196]))
            if cd[228]:
                sub_72d774c3[stor53.length] = cd[228]
            stor53.length++
            storCFA4[stor53.length] = msg.sender
            stor[sha3((8 * stor53.length) - 0x305b413e2cd67bf744a50303263bcfab63a4ce0755a3a7b7eae3f5aa0b8c3cb2)][] = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
            storCFA4[stor53.length] = address(cd[36])
            storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 128]
            storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 160]
            storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 192]
            storCFA4[stor53.length] = cd[164] + block.timestamp
            storCFA4[stor53.length] = cd[260]
            sub_bbe7180d[address(msg.sender)] = stor53.length
            mem[ceil32(('cd', 4).length) + ceil32(return_data.size) + 480 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
            mem[('cd', 4).length + ceil32(('cd', 4).length) + ceil32(return_data.size) + 480] = 65
            stor[mem[(2 * ceil32(('cd', 4).length)) + ceil32(return_data.size) + 480 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256] = stor53.length
            sub_4f502c75[stor53.length] = -1
    else:
        if stor[mem[(2 * ceil32(('cd', 4).length)) + 224 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256] <= 0:
            if not mem[ceil32(('cd', 4).length) + 192]:
                revert with 0, 'the value of amountMin1 is zero'
            if not cd[164]:
                revert with 0, 'the value of duration is zero'
            if cd[164] > 720 * 24 * 3600:
                revert with 0, 'the value of duration is exceeded 30 days'
            if ('cd', 4).length > 15:
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
            require ext_code.size(address(cd[36]))
            if cd[260]:
                call address(cd[36]).safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), mem[ceil32(('cd', 4).length) + 128], mem[ceil32(('cd', 4).length) + 160], 160, 0
            else:
                call address(cd[36]).safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), mem[ceil32(('cd', 4).length) + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if cd[164] + block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            if not cd[196]:
                if not cd[228]:
                    stor53.length++
                    storCFA4[stor53.length] = msg.sender
                    stor[sha3((8 * stor53.length) - 0x305b413e2cd67bf744a50303263bcfab63a4ce0755a3a7b7eae3f5aa0b8c3cb2)][] = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
                    storCFA4[stor53.length] = address(cd[36])
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 128]
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 160]
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 192]
                    storCFA4[stor53.length] = cd[164] + block.timestamp
                    storCFA4[stor53.length] = cd[260]
                    sub_bbe7180d[address(msg.sender)] = stor53.length
                    mem[ceil32(('cd', 4).length) + ceil32(return_data.size) + 480 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
                    mem[('cd', 4).length + ceil32(('cd', 4).length) + ceil32(return_data.size) + 480] = 65
                    stor[mem[(2 * ceil32(('cd', 4).length)) + ceil32(return_data.size) + 480 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256] = stor53.length
                    sub_4f502c75[stor53.length] = -1
                    if ceil32(('cd', 4).length) <= ('cd', 4).length:
                        var94001 = ceil32(('cd', 4).length)
                    else:
                        var95001 = ceil32(('cd', 4).length)
                else:
                    sub_72d774c3[stor53.length] = cd[228]
                    stor53.length++
                    storCFA4[stor53.length] = msg.sender
                    stor[sha3((8 * stor53.length) - 0x305b413e2cd67bf744a50303263bcfab63a4ce0755a3a7b7eae3f5aa0b8c3cb2)][] = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
                    storCFA4[stor53.length] = address(cd[36])
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 128]
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 160]
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 192]
                    storCFA4[stor53.length] = cd[164] + block.timestamp
                    storCFA4[stor53.length] = cd[260]
                    sub_bbe7180d[address(msg.sender)] = stor53.length
                    mem[ceil32(('cd', 4).length) + ceil32(return_data.size) + 480 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
                    var86001 = ceil32(('cd', 4).length)
                    mem[('cd', 4).length + ceil32(('cd', 4).length) + ceil32(return_data.size) + 480] = 65
                    stor[mem[(2 * ceil32(('cd', 4).length)) + ceil32(return_data.size) + 480 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256] = stor53.length
                    sub_4f502c75[stor53.length] = -1
                    if ceil32(('cd', 4).length) > ('cd', 4).length:
                    else:
                        var95001 = ceil32(('cd', 4).length)
            else:
                stor55[stor53.length] = uint8(bool(cd[196]))
                if not cd[228]:
                    stor53.length++
                    storCFA4[stor53.length] = msg.sender
                    stor[sha3((8 * stor53.length) - 0x305b413e2cd67bf744a50303263bcfab63a4ce0755a3a7b7eae3f5aa0b8c3cb2)][] = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
                    storCFA4[stor53.length] = address(cd[36])
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 128]
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 160]
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 192]
                    storCFA4[stor53.length] = cd[164] + block.timestamp
                    storCFA4[stor53.length] = cd[260]
                    sub_bbe7180d[address(msg.sender)] = stor53.length
                    mem[ceil32(('cd', 4).length) + ceil32(return_data.size) + 480 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
                    var86001 = ceil32(('cd', 4).length)
                    mem[('cd', 4).length + ceil32(('cd', 4).length) + ceil32(return_data.size) + 480] = 65
                    stor[mem[(2 * ceil32(('cd', 4).length)) + ceil32(return_data.size) + 480 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256] = stor53.length
                    sub_4f502c75[stor53.length] = -1
                    if ceil32(('cd', 4).length) > ('cd', 4).length:
                    else:
                        var95001 = ceil32(('cd', 4).length)
                else:
                    sub_72d774c3[stor53.length] = cd[228]
                    stor53.length++
                    storCFA4[stor53.length] = msg.sender
                    stor[sha3((8 * stor53.length) - 0x305b413e2cd67bf744a50303263bcfab63a4ce0755a3a7b7eae3f5aa0b8c3cb2)][] = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
                    storCFA4[stor53.length] = address(cd[36])
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 128]
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 160]
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 192]
                    storCFA4[stor53.length] = cd[164] + block.timestamp
                    storCFA4[stor53.length] = cd[260]
                    sub_bbe7180d[address(msg.sender)] = stor53.length
                    mem[ceil32(('cd', 4).length) + ceil32(return_data.size) + 480 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
                    var87001 = ceil32(('cd', 4).length)
                    mem[('cd', 4).length + ceil32(('cd', 4).length) + ceil32(return_data.size) + 480] = 65
                    stor[mem[(2 * ceil32(('cd', 4).length)) + ceil32(return_data.size) + 480 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256] = stor53.length
                    sub_4f502c75[stor53.length] = -1
        else:
            mem[ceil32(('cd', 4).length) + 224 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
            mem[('cd', 4).length + ceil32(('cd', 4).length) + 224] = 65
            require stor[mem[(2 * ceil32(('cd', 4).length)) + 224 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256] - 1 < stor53.length
            if sub_bbe7180d[address(stor53[stor[mem[(2 * ceil32(('cd', 4).length)) + 224 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256] - 1].field_0)] > 0:
                require stor[mem[(2 * ceil32(('cd', 4).length)) + 224 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256] - 1 < stor53.length
                if stor53[stor[mem[(2 * ceil32(('cd', 4).length)) + 224 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256] - 1].field_1536 > block.timestamp:
                    revert with 0, 'a live pool has been created by this name'
            if not mem[ceil32(('cd', 4).length) + 192]:
                revert with 0, 'the value of amountMin1 is zero'
            if not cd[164]:
                revert with 0, 'the value of duration is zero'
            if cd[164] > 720 * 24 * 3600:
                revert with 0, 'the value of duration is exceeded 30 days'
            if ('cd', 4).length > 15:
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
            require ext_code.size(address(cd[36]))
            if cd[260]:
                call address(cd[36]).safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), mem[ceil32(('cd', 4).length) + 128], mem[ceil32(('cd', 4).length) + 160], 160, 0
            else:
                call address(cd[36]).safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), mem[ceil32(('cd', 4).length) + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if cd[164] + block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            if cd[196]:
                stor55[stor53.length] = uint8(bool(cd[196]))
            if cd[228]:
                sub_72d774c3[stor53.length] = cd[228]
            stor53.length++
            storCFA4[stor53.length] = msg.sender
            stor[sha3((8 * stor53.length) - 0x305b413e2cd67bf744a50303263bcfab63a4ce0755a3a7b7eae3f5aa0b8c3cb2)][] = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
            storCFA4[stor53.length] = address(cd[36])
            storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 128]
            storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 160]
            storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 192]
            storCFA4[stor53.length] = cd[164] + block.timestamp
            storCFA4[stor53.length] = cd[260]
            sub_bbe7180d[address(msg.sender)] = stor53.length
            mem[ceil32(('cd', 4).length) + ceil32(return_data.size) + 480 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
            mem[('cd', 4).length + ceil32(('cd', 4).length) + ceil32(return_data.size) + 480] = 65
            stor[mem[(2 * ceil32(('cd', 4).length)) + ceil32(return_data.size) + 480 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256] = stor53.length
            sub_4f502c75[stor53.length] = -1
    emit 0x48733835: 32, msg.sender, 256, cd[36] << 192, mem[ceil32(('cd', 4).length) + 128], mem[ceil32(('cd', 4).length) + 160], mem[ceil32(('cd', 4).length) + 192], cd[164] + block.timestamp, cd[260], ('cd', 4).length, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
}

function bid(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 >= stor53.length:
        revert with 0, 'this pool does not exist'
    if sub_72d774c3[arg1]:
        require arg1 < stor53.length
        if stor53[arg1].field_1536 <= block.timestamp:
            revert with 0, 'this pool is closed'
        require arg1 < stor53.length
        idx = 640
        s = 0
        while stor[('name', 'stor53', 53) + (8 * arg1) + 1].length + 608 > idx:
            mem[idx + 32] = stor[s + sha3(('name', 'stor53', 53) + (8 * arg1) + 1)].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if address(stor53[arg1].field_0) == msg.sender:
            revert with 0, 'creator can't bid the pool created by self'
        if sub_7416dcd6[address(msg.sender)][arg1]:
            revert with 0, 'this pool has been bid by this sender'
        if not msg.value:
            revert with 0, 'the value of amount1 is zero'
        if msg.value < stor53[arg1].field_1280:
            revert with 0, 'the bid amount is lower than minimum bidder amount'
        if not sub_72d774c3[arg1]:
            sub_507a0a3d[address(msg.sender)]++
            sub_507a0a3d[address(msg.sender)][sub_507a0a3d[address(msg.sender)]] = arg1
            sub_7416dcd6[address(msg.sender)][arg1] = msg.value
            sub_29a65f8f[arg1]++
            if not uint256(sub_4878351b[arg1]):
                sub_4f502c75[arg1] = 0
                sub_babd8af7[arg1]++
                sub_babd8af7[arg1][sub_babd8af7[arg1]] = -1
            else:
                require sub_4f502c75[arg1] < uint256(sub_4878351b[arg1])
                if msg.value > sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1]:
                    sub_4f502c75[arg1] = uint256(sub_4878351b[arg1])
                    sub_babd8af7[arg1]++
                    sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_4f502c75[arg1]
                else:
                    require var33003 < sub_babd8af7[arg1]
                    if sub_babd8af7[arg1][var35001] == -1:
                        require var35005 < sub_babd8af7[arg1]
                        sub_babd8af7[arg1][var35005] = uint256(sub_4878351b[arg1])
                        sub_babd8af7[arg1]++
                        sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][var35001]
                    else:
                        require var37002 < uint256(sub_4878351b[arg1])
                        if msg.value > sub_7416dcd6[address(stor57[arg1][var39001])][arg1]:
                            require var39005 < sub_babd8af7[arg1]
                            sub_babd8af7[arg1][var39005] = uint256(sub_4878351b[arg1])
                            sub_babd8af7[arg1]++
                            sub_babd8af7[arg1][sub_babd8af7[arg1]] = var39004
                        else:
                            require var39004 < sub_babd8af7[arg1]
                            s = address(sub_4878351b[arg1][var39001])
                            idx = var39004
                            s = var39005
                            while sub_babd8af7[arg1][idx] != -1:
                                require sub_babd8af7[arg1][idx] < uint256(sub_4878351b[arg1])
                                mem[32] = sha3(address(sub_4878351b[arg1][stor58[arg1][idx]]), 62)
                                if msg.value <= sub_7416dcd6[address(stor57[arg1][stor58[arg1][idx]])][arg1]:
                                    require sub_babd8af7[arg1][idx] < sub_babd8af7[arg1]
                                    mem[0] = sha3(arg1, 58)
                                    s = address(sub_4878351b[arg1][stor58[arg1][idx]])
                                    idx = sub_babd8af7[arg1][idx]
                                    s = idx
                                    continue 
                                require idx < sub_babd8af7[arg1]
                                sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                                sub_babd8af7[arg1]++
                                sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
                                uint256(sub_4878351b[arg1])++
                                address(sub_4878351b[arg1][uint256(sub_4878351b[arg1])]) = msg.sender
                                if msg.value >= miningDifficulty:
                                    require ext_code.size(address(sub_d41620d1Address))
                                    call address(sub_d41620d1Address).0xba167067 with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(sub_d41620d1Address))
                                    call address(sub_d41620d1Address).0xba167067 with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(sub_d41620d1Address))
                                    call address(sub_d41620d1Address).0xba167067 with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                emit Bid(msg.sender, arg1, msg.value);
                            require idx < sub_babd8af7[arg1]
                            sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                            sub_babd8af7[arg1]++
                            sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
        else:
            if arg2 != sub_72d774c3[arg1]:
                revert with 0, 'password is not correct'
            sub_507a0a3d[address(msg.sender)]++
            sub_507a0a3d[address(msg.sender)][sub_507a0a3d[address(msg.sender)]] = arg1
            sub_7416dcd6[address(msg.sender)][arg1] = msg.value
            sub_29a65f8f[arg1]++
            if not uint256(sub_4878351b[arg1]):
                sub_4f502c75[arg1] = 0
                sub_babd8af7[arg1]++
                sub_babd8af7[arg1][sub_babd8af7[arg1]] = -1
            else:
                require sub_4f502c75[arg1] < uint256(sub_4878351b[arg1])
                if msg.value > sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1]:
                    sub_4f502c75[arg1] = uint256(sub_4878351b[arg1])
                    sub_babd8af7[arg1]++
                    sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_4f502c75[arg1]
                else:
                    require var34003 < sub_babd8af7[arg1]
                    if sub_babd8af7[arg1][var36001] == -1:
                        require var36005 < sub_babd8af7[arg1]
                        sub_babd8af7[arg1][var36005] = uint256(sub_4878351b[arg1])
                        sub_babd8af7[arg1]++
                        sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][var36001]
                    else:
                        require var38002 < uint256(sub_4878351b[arg1])
                        if msg.value > sub_7416dcd6[address(stor57[arg1][var40001])][arg1]:
                            require var40005 < sub_babd8af7[arg1]
                            sub_babd8af7[arg1][var40005] = uint256(sub_4878351b[arg1])
                            sub_babd8af7[arg1]++
                            sub_babd8af7[arg1][sub_babd8af7[arg1]] = var40004
                        else:
                            require var40004 < sub_babd8af7[arg1]
                            s = address(sub_4878351b[arg1][var40001])
                            idx = var40004
                            s = var40005
                            while sub_babd8af7[arg1][idx] != -1:
                                require sub_babd8af7[arg1][idx] < uint256(sub_4878351b[arg1])
                                mem[32] = sha3(address(sub_4878351b[arg1][stor58[arg1][idx]]), 62)
                                if msg.value <= sub_7416dcd6[address(stor57[arg1][stor58[arg1][idx]])][arg1]:
                                    require sub_babd8af7[arg1][idx] < sub_babd8af7[arg1]
                                    mem[0] = sha3(arg1, 58)
                                    s = address(sub_4878351b[arg1][stor58[arg1][idx]])
                                    idx = sub_babd8af7[arg1][idx]
                                    s = idx
                                    continue 
                                require idx < sub_babd8af7[arg1]
                                sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                                sub_babd8af7[arg1]++
                                sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
                                uint256(sub_4878351b[arg1])++
                                address(sub_4878351b[arg1][uint256(sub_4878351b[arg1])]) = msg.sender
                                if msg.value >= miningDifficulty:
                                    require ext_code.size(address(sub_d41620d1Address))
                                    call address(sub_d41620d1Address).0xba167067 with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(sub_d41620d1Address))
                                    call address(sub_d41620d1Address).0xba167067 with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(sub_d41620d1Address))
                                    call address(sub_d41620d1Address).0xba167067 with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                emit Bid(msg.sender, arg1, msg.value);
                            require idx < sub_babd8af7[arg1]
                            sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                            sub_babd8af7[arg1]++
                            sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
    else:
        if not stor55[arg1]:
            require arg1 < stor53.length
            if stor53[arg1].field_1536 <= block.timestamp:
                revert with 0, 'this pool is closed'
            require arg1 < stor53.length
            idx = 640
            s = 0
            while stor[('name', 'stor53', 53) + (8 * arg1) + 1].length + 608 > idx:
                mem[idx + 32] = stor[s + sha3(('name', 'stor53', 53) + (8 * arg1) + 1)].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if address(stor53[arg1].field_0) == msg.sender:
                revert with 0, 'creator can't bid the pool created by self'
            if sub_7416dcd6[address(msg.sender)][arg1]:
                revert with 0, 'this pool has been bid by this sender'
            if not msg.value:
                revert with 0, 'the value of amount1 is zero'
            if msg.value < stor53[arg1].field_1280:
                revert with 0, 'the bid amount is lower than minimum bidder amount'
            if not sub_72d774c3[arg1]:
                sub_507a0a3d[address(msg.sender)]++
                sub_507a0a3d[address(msg.sender)][sub_507a0a3d[address(msg.sender)]] = arg1
                sub_7416dcd6[address(msg.sender)][arg1] = msg.value
                sub_29a65f8f[arg1]++
                if not uint256(sub_4878351b[arg1]):
                    sub_4f502c75[arg1] = 0
                    sub_babd8af7[arg1]++
                    sub_babd8af7[arg1][sub_babd8af7[arg1]] = -1
                else:
                    require sub_4f502c75[arg1] < uint256(sub_4878351b[arg1])
                    if msg.value > sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1]:
                        sub_4f502c75[arg1] = uint256(sub_4878351b[arg1])
                        sub_babd8af7[arg1]++
                        sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_4f502c75[arg1]
                    else:
                        require var34003 < sub_babd8af7[arg1]
                        if sub_babd8af7[arg1][var36001] == -1:
                            require var36005 < sub_babd8af7[arg1]
                            sub_babd8af7[arg1][var36005] = uint256(sub_4878351b[arg1])
                            sub_babd8af7[arg1]++
                            sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][var36001]
                        else:
                            require var38002 < uint256(sub_4878351b[arg1])
                            if msg.value > sub_7416dcd6[address(stor57[arg1][var40001])][arg1]:
                                require var40005 < sub_babd8af7[arg1]
                                sub_babd8af7[arg1][var40005] = uint256(sub_4878351b[arg1])
                                sub_babd8af7[arg1]++
                                sub_babd8af7[arg1][sub_babd8af7[arg1]] = var40004
                            else:
                                require var40004 < sub_babd8af7[arg1]
                                s = address(sub_4878351b[arg1][var40001])
                                idx = var40004
                                s = var40005
                                while sub_babd8af7[arg1][idx] != -1:
                                    require sub_babd8af7[arg1][idx] < uint256(sub_4878351b[arg1])
                                    mem[32] = sha3(address(sub_4878351b[arg1][stor58[arg1][idx]]), 62)
                                    if msg.value <= sub_7416dcd6[address(stor57[arg1][stor58[arg1][idx]])][arg1]:
                                        require sub_babd8af7[arg1][idx] < sub_babd8af7[arg1]
                                        mem[0] = sha3(arg1, 58)
                                        s = address(sub_4878351b[arg1][stor58[arg1][idx]])
                                        idx = sub_babd8af7[arg1][idx]
                                        s = idx
                                        continue 
                                    require idx < sub_babd8af7[arg1]
                                    sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                                    sub_babd8af7[arg1]++
                                    sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
                                    uint256(sub_4878351b[arg1])++
                                    address(sub_4878351b[arg1][uint256(sub_4878351b[arg1])]) = msg.sender
                                    if msg.value >= miningDifficulty:
                                        require ext_code.size(address(sub_d41620d1Address))
                                        call address(sub_d41620d1Address).0xba167067 with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(address(sub_d41620d1Address))
                                        call address(sub_d41620d1Address).0xba167067 with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(address(sub_d41620d1Address))
                                        call address(sub_d41620d1Address).0xba167067 with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    emit Bid(msg.sender, arg1, msg.value);
                                require idx < sub_babd8af7[arg1]
                                sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                                sub_babd8af7[arg1]++
                                sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
            else:
                if arg2 != sub_72d774c3[arg1]:
                    revert with 0, 'password is not correct'
                sub_507a0a3d[address(msg.sender)]++
                sub_507a0a3d[address(msg.sender)][sub_507a0a3d[address(msg.sender)]] = arg1
                sub_7416dcd6[address(msg.sender)][arg1] = msg.value
                sub_29a65f8f[arg1]++
                if not uint256(sub_4878351b[arg1]):
                    sub_4f502c75[arg1] = 0
                    sub_babd8af7[arg1]++
                    sub_babd8af7[arg1][sub_babd8af7[arg1]] = -1
                else:
                    require sub_4f502c75[arg1] < uint256(sub_4878351b[arg1])
                    if msg.value > sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1]:
                        sub_4f502c75[arg1] = uint256(sub_4878351b[arg1])
                        sub_babd8af7[arg1]++
                        sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_4f502c75[arg1]
                    else:
                        require var35003 < sub_babd8af7[arg1]
                        if sub_babd8af7[arg1][var37001] == -1:
                            require var37005 < sub_babd8af7[arg1]
                            sub_babd8af7[arg1][var37005] = uint256(sub_4878351b[arg1])
                            sub_babd8af7[arg1]++
                            sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][var37001]
                        else:
                            require var39002 < uint256(sub_4878351b[arg1])
                            if msg.value > sub_7416dcd6[address(stor57[arg1][var41001])][arg1]:
                                require var41005 < sub_babd8af7[arg1]
                                sub_babd8af7[arg1][var41005] = uint256(sub_4878351b[arg1])
                                sub_babd8af7[arg1]++
                                sub_babd8af7[arg1][sub_babd8af7[arg1]] = var41004
                            else:
                                require var41004 < sub_babd8af7[arg1]
                                s = address(sub_4878351b[arg1][var41001])
                                idx = var41004
                                s = var41005
                                while sub_babd8af7[arg1][idx] != -1:
                                    require sub_babd8af7[arg1][idx] < uint256(sub_4878351b[arg1])
                                    mem[32] = sha3(address(sub_4878351b[arg1][stor58[arg1][idx]]), 62)
                                    if msg.value <= sub_7416dcd6[address(stor57[arg1][stor58[arg1][idx]])][arg1]:
                                        require sub_babd8af7[arg1][idx] < sub_babd8af7[arg1]
                                        mem[0] = sha3(arg1, 58)
                                        s = address(sub_4878351b[arg1][stor58[arg1][idx]])
                                        idx = sub_babd8af7[arg1][idx]
                                        s = idx
                                        continue 
                                    require idx < sub_babd8af7[arg1]
                                    sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                                    sub_babd8af7[arg1]++
                                    sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
                                    uint256(sub_4878351b[arg1])++
                                    address(sub_4878351b[arg1][uint256(sub_4878351b[arg1])]) = msg.sender
                                    if msg.value >= miningDifficulty:
                                        require ext_code.size(address(sub_d41620d1Address))
                                        call address(sub_d41620d1Address).0xba167067 with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(address(sub_d41620d1Address))
                                        call address(sub_d41620d1Address).0xba167067 with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(address(sub_d41620d1Address))
                                        call address(sub_d41620d1Address).0xba167067 with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    emit Bid(msg.sender, arg1, msg.value);
                                require idx < sub_babd8af7[arg1]
                                sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                                sub_babd8af7[arg1]++
                                sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
        else:
            require ext_code.size(address(botTokenAddress))
            staticcall address(botTokenAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < minValueOfBotHolder:
                revert with 0, 'BOT is not enough'
            require arg1 < stor53.length
            if stor53[arg1].field_1536 <= block.timestamp:
                revert with 0, 'this pool is closed'
            require arg1 < stor53.length
            idx = ceil32(return_data.size) + 640
            s = 0
            while ceil32(return_data.size) + stor[('name', 'stor53', 53) + (8 * arg1) + 1].length + 608 > idx:
                mem[idx + 32] = stor[s + sha3(('name', 'stor53', 53) + (8 * arg1) + 1)].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if address(stor53[arg1].field_0) == msg.sender:
                revert with 0, 'creator can't bid the pool created by self'
            if sub_7416dcd6[address(msg.sender)][arg1]:
                revert with 0, 'this pool has been bid by this sender'
            if not msg.value:
                revert with 0, 'the value of amount1 is zero'
            if msg.value < stor53[arg1].field_1280:
                revert with 0, 'the bid amount is lower than minimum bidder amount'
            if not sub_72d774c3[arg1]:
                sub_507a0a3d[address(msg.sender)]++
                sub_507a0a3d[address(msg.sender)][sub_507a0a3d[address(msg.sender)]] = arg1
                sub_7416dcd6[address(msg.sender)][arg1] = msg.value
                sub_29a65f8f[arg1]++
                if not uint256(sub_4878351b[arg1]):
                    sub_4f502c75[arg1] = 0
                    sub_babd8af7[arg1]++
                    sub_babd8af7[arg1][sub_babd8af7[arg1]] = -1
                else:
                    require sub_4f502c75[arg1] < uint256(sub_4878351b[arg1])
                    if msg.value > sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1]:
                        sub_4f502c75[arg1] = uint256(sub_4878351b[arg1])
                        sub_babd8af7[arg1]++
                        sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_4f502c75[arg1]
                    else:
                        require var46003 < sub_babd8af7[arg1]
                        if sub_babd8af7[arg1][var48001] == -1:
                            require var48005 < sub_babd8af7[arg1]
                            sub_babd8af7[arg1][var48005] = uint256(sub_4878351b[arg1])
                            sub_babd8af7[arg1]++
                            sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][var48001]
                        else:
                            require var50002 < uint256(sub_4878351b[arg1])
                            if msg.value > sub_7416dcd6[address(stor57[arg1][var52001])][arg1]:
                                require var52005 < sub_babd8af7[arg1]
                                sub_babd8af7[arg1][var52005] = uint256(sub_4878351b[arg1])
                                sub_babd8af7[arg1]++
                                sub_babd8af7[arg1][sub_babd8af7[arg1]] = var52004
                            else:
                                require var52004 < sub_babd8af7[arg1]
                                s = address(sub_4878351b[arg1][var52001])
                                idx = var52004
                                s = var52005
                                while sub_babd8af7[arg1][idx] != -1:
                                    require sub_babd8af7[arg1][idx] < uint256(sub_4878351b[arg1])
                                    mem[32] = sha3(address(sub_4878351b[arg1][stor58[arg1][idx]]), 62)
                                    if msg.value <= sub_7416dcd6[address(stor57[arg1][stor58[arg1][idx]])][arg1]:
                                        require sub_babd8af7[arg1][idx] < sub_babd8af7[arg1]
                                        mem[0] = sha3(arg1, 58)
                                        s = address(sub_4878351b[arg1][stor58[arg1][idx]])
                                        idx = sub_babd8af7[arg1][idx]
                                        s = idx
                                        continue 
                                    require idx < sub_babd8af7[arg1]
                                    sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                                    sub_babd8af7[arg1]++
                                    sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
                                    uint256(sub_4878351b[arg1])++
                                    address(sub_4878351b[arg1][uint256(sub_4878351b[arg1])]) = msg.sender
                                    if msg.value >= miningDifficulty:
                                        require ext_code.size(address(sub_d41620d1Address))
                                        call address(sub_d41620d1Address).0xba167067 with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(address(sub_d41620d1Address))
                                        call address(sub_d41620d1Address).0xba167067 with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(address(sub_d41620d1Address))
                                        call address(sub_d41620d1Address).0xba167067 with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    emit Bid(msg.sender, arg1, msg.value);
                                require idx < sub_babd8af7[arg1]
                                sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                                sub_babd8af7[arg1]++
                                sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
            else:
                if arg2 != sub_72d774c3[arg1]:
                    revert with 0, 'password is not correct'
                sub_507a0a3d[address(msg.sender)]++
                sub_507a0a3d[address(msg.sender)][sub_507a0a3d[address(msg.sender)]] = arg1
                sub_7416dcd6[address(msg.sender)][arg1] = msg.value
                sub_29a65f8f[arg1]++
                if not uint256(sub_4878351b[arg1]):
                    sub_4f502c75[arg1] = 0
                    sub_babd8af7[arg1]++
                    sub_babd8af7[arg1][sub_babd8af7[arg1]] = -1
                else:
                    require sub_4f502c75[arg1] < uint256(sub_4878351b[arg1])
                    if msg.value > sub_7416dcd6[address(stor57[arg1][stor59[arg1]])][arg1]:
                        sub_4f502c75[arg1] = uint256(sub_4878351b[arg1])
                        sub_babd8af7[arg1]++
                        sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_4f502c75[arg1]
                    else:
                        require var47003 < sub_babd8af7[arg1]
                        if sub_babd8af7[arg1][var49001] == -1:
                            require var49005 < sub_babd8af7[arg1]
                            sub_babd8af7[arg1][var49005] = uint256(sub_4878351b[arg1])
                            sub_babd8af7[arg1]++
                            sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][var49001]
                        else:
                            require var51002 < uint256(sub_4878351b[arg1])
                            if msg.value > sub_7416dcd6[address(stor57[arg1][var53001])][arg1]:
                                require var53005 < sub_babd8af7[arg1]
                                sub_babd8af7[arg1][var53005] = uint256(sub_4878351b[arg1])
                                sub_babd8af7[arg1]++
                                sub_babd8af7[arg1][sub_babd8af7[arg1]] = var53004
                            else:
                                require var53004 < sub_babd8af7[arg1]
                                s = address(sub_4878351b[arg1][var53001])
                                idx = var53004
                                s = var53005
                                while sub_babd8af7[arg1][idx] != -1:
                                    require sub_babd8af7[arg1][idx] < uint256(sub_4878351b[arg1])
                                    mem[32] = sha3(address(sub_4878351b[arg1][stor58[arg1][idx]]), 62)
                                    if msg.value <= sub_7416dcd6[address(stor57[arg1][stor58[arg1][idx]])][arg1]:
                                        require sub_babd8af7[arg1][idx] < sub_babd8af7[arg1]
                                        mem[0] = sha3(arg1, 58)
                                        s = address(sub_4878351b[arg1][stor58[arg1][idx]])
                                        idx = sub_babd8af7[arg1][idx]
                                        s = idx
                                        continue 
                                    require idx < sub_babd8af7[arg1]
                                    sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                                    sub_babd8af7[arg1]++
                                    sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
                                    uint256(sub_4878351b[arg1])++
                                    address(sub_4878351b[arg1][uint256(sub_4878351b[arg1])]) = msg.sender
                                    if msg.value >= miningDifficulty:
                                        require ext_code.size(address(sub_d41620d1Address))
                                        call address(sub_d41620d1Address).0xba167067 with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(address(sub_d41620d1Address))
                                        call address(sub_d41620d1Address).0xba167067 with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(address(sub_d41620d1Address))
                                        call address(sub_d41620d1Address).0xba167067 with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    emit Bid(msg.sender, arg1, msg.value);
                                require idx < sub_babd8af7[arg1]
                                sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                                sub_babd8af7[arg1]++
                                sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
    uint256(sub_4878351b[arg1])++
    address(sub_4878351b[arg1][uint256(sub_4878351b[arg1])]) = msg.sender
    if msg.value >= miningDifficulty:
        require ext_code.size(address(sub_d41620d1Address))
        call address(sub_d41620d1Address).0xba167067 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(sub_d41620d1Address))
        call address(sub_d41620d1Address).0xba167067 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(sub_d41620d1Address))
        call address(sub_d41620d1Address).0xba167067 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Bid(msg.sender, arg1, msg.value);
}



}
