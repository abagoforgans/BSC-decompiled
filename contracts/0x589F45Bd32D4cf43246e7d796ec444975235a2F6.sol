contract main {




// =====================  Runtime code  =====================


#
#  - sub_b5cea742(?)
#  - swap(uint256 arg1, uint256 arg2)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address governorAddress;
mapping of uint256 config;
array of struct stor53;
mapping of uint256 sub_bbe7180d;
mapping of uint256 stor55;
mapping of uint8 stor56;
mapping of uint256 sub_72d774c3;
mapping of uint8 stor58;
mapping of uint8 stor59;
address botTokenAddress;
uint256 stor28F1;
address sub_ee24fff5Address;
uint256 stor3B3A;
uint256 txFeeRatio;
uint256 minValueOfBotHolder;
address feeAddress;
uint256 storF2F8;

function governor() {
    return governorAddress
}

function getTxFeeRatio() {
    return txFeeRatio
}

function getFeeAddress() {
    return address(feeAddress)
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
    return bool(stor56[arg1])
}

function getBotToken() {
    return address(botTokenAddress)
}

function sub_db06c05f(?) {
    require calldata.size - 4 >= 32
    return bool(stor59[arg1])
}

function sub_e87ba7aa(?) {
    require calldata.size - 4 >= 32
    return bool(stor58[arg1])
}

function sub_ee24fff5(?) {
    return address(sub_ee24fff5Address)
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

function transferGovernor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        if governorAddress:
            revert with 0, 'invalid governor'
    governorAddress = arg1
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

function sub_76dd2a02(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if governorAddress != msg.sender:
        if governorAddress:
            revert with 0, 'invalid governor'
    governorAddress = address(arg1)
    txFeeRatio = 2 * 10^16
    minValueOfBotHolder = 10^17
    uint256(stor28F1) = 0x48dc0190df5ece990c649a7a07ba19d3650a9572
    uint256(stor3B3A) = 0x60dd632f7dd45cb97a86376863d623d6756e848
    uint256(storF2F8) = 0xe6bac5bc6ed0f2c7e41ac3e560ca506537990d0e
}

function sub_9d6ce84b(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require calldata.size >= arg1.length + arg1 + 36
    mem[ceil32(arg1.length) + 128] = stor55[arg1[all]]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function pools(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor53.length
    mem[128] = stor[sha3((9 * arg1) + ('name', 'stor53', 53) + 1)].field_0
    idx = 128
    s = 0
    while stor[(9 * arg1) + ('name', 'stor53', 53) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((9 * arg1) + ('name', 'stor53', 53) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor53[arg1].field_0, 
           Array(len=stor[(9 * arg1) + ('name', 'stor53', 53) + 1].length, data=mem[128 len ceil32(stor[(9 * arg1) + ('name', 'stor53', 53) + 1].length)]),
           stor53[arg1].field_512,
           stor53[arg1].field_768,
           stor53[arg1].field_1024,
           stor53[arg1].field_1280,
           stor53[arg1].field_1536,
           stor53[arg1].field_1792,
           stor53[arg1].field_2048
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    if governorAddress != msg.sender:
        if governorAddress:
            revert with 0, 'invalid governor'
    governorAddress = arg1
    txFeeRatio = 15 * 10^15
    minValueOfBotHolder = 10^17
    uint256(stor28F1) = 0x5beabaebb3146685dd74176f68a0721f91297d37
    uint256(stor3B3A) = 0xc7e5e9434f4a71e6db978bd65b4d61d3593e5f27
    uint256(storF2F8) = 0xefe59b0721c85730acd37daac4eb32c3a96658ec
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function creatorClaim(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= stor53.length:
        revert with 0, 'this pool does not exist'
    if stor53[arg1].field_1792 > block.timestamp:
        revert with 0, 'this pool is not closed'
    if stor59[arg1]:
        revert with 0, 'this pool is swapped'
    require arg1 < stor53.length
    if stor53[arg1].field_0 != msg.sender:
        revert with 0, 'sender is not pool creator'
    if stor58[arg1]:
        revert with 0, 'creator has claimed this pool'
    stor58[arg1] = 1
    sub_bbe7180d[msg.sender] = 0
    require arg1 < stor53.length
    idx = 704
    s = 0
    while stor[('name', 'stor53', 53) + (9 * arg1) + 1].length + 672 > idx:
        mem[idx + 32] = stor[s + sha3(('name', 'stor53', 53) + (9 * arg1) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(stor53[arg1].field_512)
    if stor53[arg1].field_2048:
        call stor53[arg1].field_512.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
             gas gas_remaining wei
            args address(this.address), stor53[arg1].field_0, stor53[arg1].field_1024, stor53[arg1].field_1280, 160, 0
    else:
        call stor53[arg1].field_512.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args address(this.address), stor53[arg1].field_0, stor53[arg1].field_1024
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Claimed(msg.sender, arg1);
}



}
