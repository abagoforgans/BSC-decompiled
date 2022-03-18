contract main {




// =====================  Runtime code  =====================


#
#  - creatorClaim(uint256 arg1)
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
mapping of uint256 sub_00e75a19;
mapping of uint256 sub_eb8759d6;
mapping of uint256 sub_bbe7180d;
mapping of uint256 stor61;
array of uint256 sub_507a0a3d;
mapping of uint256 sub_86f8c547;
mapping of uint8 stor64;
array of uint256 stor99;
uint256 sub_306ed47b;
uint256 sub_a5b6260e;
address botTokenAddress;
uint256 stor3066;
address sub_d41620d1Address;
uint256 stor4DE6;
uint256 minValueOfBotHolder;
array of address stor93919839132673366524933561348464307323150594581428697006173117430883306160973;
array of address stor93919839132673366524933561348464307323150594581428697006173117430883306160975;
array of uint256 stor93919839132673366524933561348464307323150594581428697006173117430883306160976;
array of uint256 stor93919839132673366524933561348464307323150594581428697006173117430883306160977;
array of uint256 stor93919839132673366524933561348464307323150594581428697006173117430883306160978;
array of uint256 stor93919839132673366524933561348464307323150594581428697006173117430883306160979;
array of uint256 stor93919839132673366524933561348464307323150594581428697006173117430883306160980;
array of uint256 stor93919839132673366524933561348464307323150594581428697006173117430883306160981;
array of uint256 stor93919839132673366524933561348464307323150594581428697006173117430883306160982;
uint256 miningDifficulty;
uint256 txFeeRatio;

function sub_00e75a19(?) {
    require calldata.size - 4 >= 32
    return sub_00e75a19[arg1]
}

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

function getConfig(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return config[arg1]
}

function sub_72d774c3(?) {
    require calldata.size - 4 >= 32
    return sub_72d774c3[arg1]
}

function sub_86f8c547(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_86f8c547[arg1][arg2]
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
    return bool(stor64[arg1][arg2])
}

function sub_d41620d1(?) {
    return address(sub_d41620d1Address)
}

function sub_e87ba7aa(?) {
    require calldata.size - 4 >= 32
    return bool(stor54[arg1])
}

function sub_eb8759d6(?) {
    require calldata.size - 4 >= 32
    return sub_eb8759d6[arg1]
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
    mem[ceil32(arg1.length) + 128] = stor61[arg1[all]]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
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

function sub_f64d85af(?) {
    require calldata.size - 4 >= 32
    require arg1 < stor53.length
    idx = 768
    s = 0
    while stor[('name', 'stor53', 53) + (10 * arg1) + 1].length + 736 > idx:
        mem[idx + 32] = stor[s + sha3(('name', 'stor53', 53) + (10 * arg1) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor53[arg1].field_1792 + 1 < stor53[arg1].field_1792:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp >= stor53[arg1].field_2304:
        return (stor53[arg1].field_1792 + 1)
    if not stor53[arg1].field_1792 + 1:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor53[arg1].field_2048 / stor53[arg1].field_1792 + 1:
        return (stor53[arg1].field_1792 + 1)
    if block.timestamp > stor53[arg1].field_2304:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if 1 > stor53[arg1].field_2304 - block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not stor53[arg1].field_2048 / stor53[arg1].field_1792 + 1:
        revert with 0, 'SafeMath: division by zero', 0
    if stor53[arg1].field_2304 + -block.timestamp - 1 / stor53[arg1].field_2048 / stor53[arg1].field_1792 + 1 > stor53[arg1].field_1792 + 1:
        revert with 0, 'SafeMath: subtraction overflow', 0
    return (stor53[arg1].field_1792 + -(stor53[arg1].field_2304 + -block.timestamp - 1 / stor53[arg1].field_2048 / stor53[arg1].field_1792 + 1) + 1)
}

function nextRoundInSeconds(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor53.length
    idx = 768
    s = 0
    while stor[('name', 'stor53', 53) + (10 * arg1) + 1].length + 736 > idx:
        mem[idx + 32] = stor[s + sha3(('name', 'stor53', 53) + (10 * arg1) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if block.timestamp >= stor53[arg1].field_2304:
        return 0
    if stor53[arg1].field_1792 + 1 < stor53[arg1].field_1792:
        revert with 0, 'SafeMath: addition overflow'
    if not stor53[arg1].field_1792 + 1:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor53[arg1].field_2048 / stor53[arg1].field_1792 + 1:
        return 0
    if block.timestamp > stor53[arg1].field_2304:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if 1 > stor53[arg1].field_2304 - block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not stor53[arg1].field_2048 / stor53[arg1].field_1792 + 1:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor53[arg1].field_2304 + -block.timestamp - 1 / stor53[arg1].field_2048 / stor53[arg1].field_1792 + 1:
        if 0 > stor53[arg1].field_2304:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if block.timestamp > stor53[arg1].field_2304:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (stor53[arg1].field_2304 - block.timestamp)
    if stor53[arg1].field_2048 / stor53[arg1].field_1792 + 1 * stor53[arg1].field_2304 + -block.timestamp - 1 / stor53[arg1].field_2048 / stor53[arg1].field_1792 + 1 / stor53[arg1].field_2304 + -block.timestamp - 1 / stor53[arg1].field_2048 / stor53[arg1].field_1792 + 1 != stor53[arg1].field_2048 / stor53[arg1].field_1792 + 1:
        revert with 0, 'SafeMath: multiplication overflow'
    if stor53[arg1].field_2048 / stor53[arg1].field_1792 + 1 * stor53[arg1].field_2304 + -block.timestamp - 1 / stor53[arg1].field_2048 / stor53[arg1].field_1792 + 1 > stor53[arg1].field_2304:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp > stor53[arg1].field_2304 - (stor53[arg1].field_2048 / stor53[arg1].field_1792 + 1 * stor53[arg1].field_2304 + -block.timestamp - 1 / stor53[arg1].field_2048 / stor53[arg1].field_1792 + 1):
        revert with 0, 'SafeMath: subtraction overflow', 0
    return (stor53[arg1].field_2304 - (stor53[arg1].field_2048 / stor53[arg1].field_1792 + 1 * stor53[arg1].field_2304 + -block.timestamp - 1 / stor53[arg1].field_2048 / stor53[arg1].field_1792 + 1) - block.timestamp)
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
        uint256(stor3066) = 0x5beabaebb3146685dd74176f68a0721f91297d37
        uint256(stor4DE6) = 0x73282a63f0e3d7e9604575420f777361eca3c86a
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
            uint256(stor3066) = 0x5beabaebb3146685dd74176f68a0721f91297d37
            uint256(stor4DE6) = 0x73282a63f0e3d7e9604575420f777361eca3c86a
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
                uint256(stor3066) = 0x5beabaebb3146685dd74176f68a0721f91297d37
                uint256(stor4DE6) = 0x73282a63f0e3d7e9604575420f777361eca3c86a
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
                uint256(stor3066) = 0x5beabaebb3146685dd74176f68a0721f91297d37
                uint256(stor4DE6) = 0x73282a63f0e3d7e9604575420f777361eca3c86a
                uint8(stor0.field_8) = 0
}

function currentPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor53.length
    idx = 768
    s = 0
    while stor[('name', 'stor53', 53) + (10 * arg1) + 1].length + 736 > idx:
        mem[idx + 32] = stor[s + sha3(('name', 'stor53', 53) + (10 * arg1) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor53[arg1].field_1792 + 1 < stor53[arg1].field_1792:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp >= stor53[arg1].field_2304:
        return stor53[arg1].field_1536
    if not stor53[arg1].field_1792 + 1:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor53[arg1].field_2048 / stor53[arg1].field_1792 + 1:
        return stor53[arg1].field_1536
    if block.timestamp > stor53[arg1].field_2304:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if 1 > stor53[arg1].field_2304 - block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not stor53[arg1].field_2048 / stor53[arg1].field_1792 + 1:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor53[arg1].field_2304 + -block.timestamp - 1 / stor53[arg1].field_2048 / stor53[arg1].field_1792 + 1:
        return stor53[arg1].field_1536
    if stor53[arg1].field_1536 > stor53[arg1].field_1280:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not stor53[arg1].field_1280 - stor53[arg1].field_1536:
        if not stor53[arg1].field_1792:
            revert with 0, 'SafeMath: division by zero', 0
        if stor53[arg1].field_1536 + (0 / stor53[arg1].field_1792) < 0 / stor53[arg1].field_1792:
            revert with 0, 'SafeMath: addition overflow'
        return (stor53[arg1].field_1536 + (0 / stor53[arg1].field_1792))
    if (stor53[arg1].field_1280 * stor53[arg1].field_2304 + -block.timestamp - 1 / stor53[arg1].field_2048 / stor53[arg1].field_1792 + 1) - (stor53[arg1].field_1536 * stor53[arg1].field_2304 + -block.timestamp - 1 / stor53[arg1].field_2048 / stor53[arg1].field_1792 + 1) / stor53[arg1].field_1280 - stor53[arg1].field_1536 != stor53[arg1].field_2304 + -block.timestamp - 1 / stor53[arg1].field_2048 / stor53[arg1].field_1792 + 1:
        revert with 0, 'SafeMath: multiplication overflow'
    if not stor53[arg1].field_1792:
        revert with 0, 'SafeMath: division by zero', 0
    if stor53[arg1].field_1536 + ((stor53[arg1].field_1280 * stor53[arg1].field_2304 + -block.timestamp - 1 / stor53[arg1].field_2048 / stor53[arg1].field_1792 + 1) - (stor53[arg1].field_1536 * stor53[arg1].field_2304 + -block.timestamp - 1 / stor53[arg1].field_2048 / stor53[arg1].field_1792 + 1) / stor53[arg1].field_1792) < (stor53[arg1].field_1280 * stor53[arg1].field_2304 + -block.timestamp - 1 / stor53[arg1].field_2048 / stor53[arg1].field_1792 + 1) - (stor53[arg1].field_1536 * stor53[arg1].field_2304 + -block.timestamp - 1 / stor53[arg1].field_2048 / stor53[arg1].field_1792 + 1) / stor53[arg1].field_1792:
        revert with 0, 'SafeMath: addition overflow'
    return (stor53[arg1].field_1536 + ((stor53[arg1].field_1280 * stor53[arg1].field_2304 + -block.timestamp - 1 / stor53[arg1].field_2048 / stor53[arg1].field_1792 + 1) - (stor53[arg1].field_1536 * stor53[arg1].field_2304 + -block.timestamp - 1 / stor53[arg1].field_2048 / stor53[arg1].field_1792 + 1) / stor53[arg1].field_1792))
}

function bidderClaim(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= stor53.length:
        revert with 0, 'this pool does not exist'
    if stor53[arg1].field_2304 <= block.timestamp:
        if sub_f5639ff5[arg1] != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sender is not the winner of this pool'
        if stor64[address(msg.sender)][arg1]:
            revert with 0, 'sender has claimed this pool'
        stor64[address(msg.sender)][arg1] = 1
        require arg1 < stor53.length
        idx = 768
        s = 0
        while stor[('name', 'stor53', 53) + (10 * arg1) + 1].length + 736 > idx:
            mem[idx + 32] = stor[s + sha3(('name', 'stor53', 53) + (10 * arg1) + 1)].field_256
            idx = idx + 32
            s = s + 1
            continue 
    else:
        if not sub_eb8759d6[arg1]:
            revert with 0, 'this pool is not closed'
        require arg1 < stor53.length
        idx = 768
        s = 0
        while stor[('name', 'stor53', 53) + (10 * arg1) + 1].length + 736 > idx:
            mem[idx + 32] = stor[s + sha3(('name', 'stor53', 53) + (10 * arg1) + 1)].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor53[arg1].field_1792 + 1 < stor53[arg1].field_1792:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp >= stor53[arg1].field_2304:
            if sub_eb8759d6[arg1] == stor53[arg1].field_1792 + 1:
                revert with 0, 'this pool is not finished'
            if sub_f5639ff5[arg1] != msg.sender:
                revert with 0, 'sender is not the winner of this pool'
            if stor64[address(msg.sender)][arg1]:
                revert with 0, 'sender has claimed this pool'
            stor64[address(msg.sender)][arg1] = 1
            require arg1 < stor53.length
            idx = ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 1440
            s = 0
            while ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + stor[('name', 'stor53', 53) + (10 * arg1) + 1].length + 1408 > idx:
                mem[idx + 32] = stor[s + sha3(('name', 'stor53', 53) + (10 * arg1) + 1)].field_256
                idx = idx + 32
                s = s + 1
                continue 
        else:
            if not stor53[arg1].field_1792 + 1:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor53[arg1].field_2048 / stor53[arg1].field_1792 + 1:
                if sub_eb8759d6[arg1] == stor53[arg1].field_1792 + 1:
                    revert with 0, 'this pool is not finished'
                if sub_f5639ff5[arg1] != msg.sender:
                    revert with 0, 'sender is not the winner of this pool'
                if stor64[address(msg.sender)][arg1]:
                    revert with 0, 'sender has claimed this pool'
                stor64[address(msg.sender)][arg1] = 1
                require arg1 < stor53.length
                idx = ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 1504
                s = 0
                while ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + stor[('name', 'stor53', 53) + (10 * arg1) + 1].length + 1472 > idx:
                    mem[idx + 32] = stor[s + sha3(('name', 'stor53', 53) + (10 * arg1) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            else:
                if block.timestamp > stor53[arg1].field_2304:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 1 > stor53[arg1].field_2304 - block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not stor53[arg1].field_2048 / stor53[arg1].field_1792 + 1:
                    revert with 0, 'SafeMath: division by zero', 0
                if stor53[arg1].field_2304 + -block.timestamp - 1 / stor53[arg1].field_2048 / stor53[arg1].field_1792 + 1 > stor53[arg1].field_1792 + 1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_eb8759d6[arg1] == stor53[arg1].field_1792 + -(stor53[arg1].field_2304 + -block.timestamp - 1 / stor53[arg1].field_2048 / stor53[arg1].field_1792 + 1) + 1:
                    revert with 0, 'this pool is not finished'
                if sub_f5639ff5[arg1] != msg.sender:
                    revert with 0, 'sender is not the winner of this pool'
                if stor64[address(msg.sender)][arg1]:
                    revert with 0, 'sender has claimed this pool'
                stor64[address(msg.sender)][arg1] = 1
                require arg1 < stor53.length
                idx = ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + 1760
                s = 0
                while ceil32(stor[('name', 'stor53', 53) + (10 * arg1) + 1].length) + stor[('name', 'stor53', 53) + (10 * arg1) + 1].length + 1728 > idx:
                    mem[idx + 32] = stor[s + sha3(('name', 'stor53', 53) + (10 * arg1) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    require ext_code.size(address(stor53[arg1].field_512))
    call address(stor53[arg1].field_512).safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, stor53[arg1].field_768, stor53[arg1].field_1024, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Claimed(msg.sender, arg1);
}

function sub_f4a645f7(?) payable {
    require calldata.size - 4 >= 320
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require ceil32(('cd', 4).length) + 128 >= 96 and ceil32(('cd', 4).length) + 128 <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    mem[128 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[('cd', 4).length + 128] = 0
    require cd[36] == address(cd[36])
    require calldata.size > 163
    require bool(ceil32(('cd', 4).length) + 192 <= test266151307())
    require 196 <= calldata.size
    idx = 0
    s = 132
    t = ceil32(('cd', 4).length) + 128
    while idx < 2:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[260] == bool(cd[260])
    if sub_bbe7180d[msg.sender]:
        revert with 0, 'a pool has created by this address'
    mem[ceil32(('cd', 4).length) + 192 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
    mem[('cd', 4).length + ceil32(('cd', 4).length) + 192] = 61
    if ceil32(('cd', 4).length) <= ('cd', 4).length:
        if stor[mem[(2 * ceil32(('cd', 4).length)) + 192 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256] <= 0:
            if not cd[100]:
                revert with 0, 'the value of tokenAmount0 is zero'
            if not mem[ceil32(('cd', 4).length) + 128]:
                revert with 0, 'the value of amountMax1 is zero'
            if not mem[ceil32(('cd', 4).length) + 160]:
                revert with 0, 'the value of amountMin1 is zero'
            if mem[ceil32(('cd', 4).length) + 128] <= mem[ceil32(('cd', 4).length) + 160]:
                revert with 0, 'amountMax1 should larger than amountMin1'
            if not cd[228]:
                revert with 0, 'the value of duration is zero'
            if cd[228] > 720 * 24 * 3600:
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
            call address(cd[36]).safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), cd[68], cd[100], 160, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if cd[228] + block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            if not cd[260]:
                if not cd[292]:
                    stor53.length++
                    storCFA4[stor53.length] = msg.sender
                    stor[sha3((10 * stor53.length) - 0x305b413e2cd67bf744a50303263bcfab63a4ce0755a3a7b7eae3f5aa0b8c3cb2)][] = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
                    storCFA4[stor53.length] = address(cd[36])
                    storCFA4[stor53.length] = cd[68]
                    storCFA4[stor53.length] = cd[100]
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 128]
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 160]
                    storCFA4[stor53.length] = cd[196]
                    storCFA4[stor53.length] = cd[228]
                    storCFA4[stor53.length] = cd[228] + block.timestamp
                    sub_bbe7180d[address(msg.sender)] = stor53.length
                    mem[ceil32(('cd', 4).length) + ceil32(return_data.size) + 512 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
                    mem[('cd', 4).length + ceil32(('cd', 4).length) + ceil32(return_data.size) + 512] = 61
                    stor[mem[(2 * ceil32(('cd', 4).length)) + ceil32(return_data.size) + 512 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256] = stor53.length
                    if ceil32(('cd', 4).length) > ('cd', 4).length:
                    else:
                        var99001 = ceil32(('cd', 4).length)
                else:
                    sub_72d774c3[stor53.length] = cd[292]
                    stor53.length++
                    storCFA4[stor53.length] = msg.sender
                    stor[sha3((10 * stor53.length) - 0x305b413e2cd67bf744a50303263bcfab63a4ce0755a3a7b7eae3f5aa0b8c3cb2)][] = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
                    storCFA4[stor53.length] = address(cd[36])
                    storCFA4[stor53.length] = cd[68]
                    storCFA4[stor53.length] = cd[100]
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 128]
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 160]
                    storCFA4[stor53.length] = cd[196]
                    storCFA4[stor53.length] = cd[228]
                    storCFA4[stor53.length] = cd[228] + block.timestamp
                    sub_bbe7180d[address(msg.sender)] = stor53.length
                    mem[ceil32(('cd', 4).length) + ceil32(return_data.size) + 512 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
                    mem[('cd', 4).length + ceil32(('cd', 4).length) + ceil32(return_data.size) + 512] = 61
                    stor[mem[(2 * ceil32(('cd', 4).length)) + ceil32(return_data.size) + 512 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256] = stor53.length
            else:
                stor55[stor53.length] = uint8(bool(cd[260]))
                if not cd[292]:
                    stor53.length++
                    storCFA4[stor53.length] = msg.sender
                    stor[sha3((10 * stor53.length) - 0x305b413e2cd67bf744a50303263bcfab63a4ce0755a3a7b7eae3f5aa0b8c3cb2)][] = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
                    storCFA4[stor53.length] = address(cd[36])
                    storCFA4[stor53.length] = cd[68]
                    storCFA4[stor53.length] = cd[100]
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 128]
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 160]
                    storCFA4[stor53.length] = cd[196]
                    storCFA4[stor53.length] = cd[228]
                    storCFA4[stor53.length] = cd[228] + block.timestamp
                    sub_bbe7180d[address(msg.sender)] = stor53.length
                    mem[ceil32(('cd', 4).length) + ceil32(return_data.size) + 512 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
                else:
                    sub_72d774c3[stor53.length] = cd[292]
                    stor53.length++
                    storCFA4[stor53.length] = msg.sender
                    stor[sha3((10 * stor53.length) - 0x305b413e2cd67bf744a50303263bcfab63a4ce0755a3a7b7eae3f5aa0b8c3cb2)][] = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
                    storCFA4[stor53.length] = address(cd[36])
                    storCFA4[stor53.length] = cd[68]
                    storCFA4[stor53.length] = cd[100]
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 128]
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 160]
                    storCFA4[stor53.length] = cd[196]
                    storCFA4[stor53.length] = cd[228]
                    storCFA4[stor53.length] = cd[228] + block.timestamp
                    sub_bbe7180d[address(msg.sender)] = stor53.length
                    mem[ceil32(('cd', 4).length) + ceil32(return_data.size) + 512 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
                    var90001 = ceil32(('cd', 4).length)
                mem[('cd', 4).length + ceil32(('cd', 4).length) + ceil32(return_data.size) + 512] = 61
                stor[mem[(2 * ceil32(('cd', 4).length)) + ceil32(return_data.size) + 512 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256] = stor53.length
        else:
            mem[ceil32(('cd', 4).length) + 192 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
            mem[('cd', 4).length + ceil32(('cd', 4).length) + 192] = 61
            require stor[mem[(2 * ceil32(('cd', 4).length)) + 192 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256] - 1 < stor53.length
            if sub_bbe7180d[address(stor53[stor[mem[(2 * ceil32(('cd', 4).length)) + 192 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256]].field_0)] > 0:
                require stor[mem[(2 * ceil32(('cd', 4).length)) + 192 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256] - 1 < stor53.length
                if stor53[stor[mem[(2 * ceil32(('cd', 4).length)) + 192 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256]].field_0 > block.timestamp:
                    revert with 0, 'a live pool has been created by this name'
            if not cd[100]:
                revert with 0, 'the value of tokenAmount0 is zero'
            if not mem[ceil32(('cd', 4).length) + 128]:
                revert with 0, 'the value of amountMax1 is zero'
            if not mem[ceil32(('cd', 4).length) + 160]:
                revert with 0, 'the value of amountMin1 is zero'
            if mem[ceil32(('cd', 4).length) + 128] <= mem[ceil32(('cd', 4).length) + 160]:
                revert with 0, 'amountMax1 should larger than amountMin1'
            if not cd[228]:
                revert with 0, 'the value of duration is zero'
            if cd[228] > 720 * 24 * 3600:
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
            call address(cd[36]).safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), cd[68], cd[100], 160, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if cd[228] + block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            if cd[260]:
                stor55[stor53.length] = uint8(bool(cd[260]))
            if cd[292]:
                sub_72d774c3[stor53.length] = cd[292]
            stor53.length++
            storCFA4[stor53.length] = msg.sender
            stor[sha3((10 * stor53.length) - 0x305b413e2cd67bf744a50303263bcfab63a4ce0755a3a7b7eae3f5aa0b8c3cb2)][] = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
            storCFA4[stor53.length] = address(cd[36])
            storCFA4[stor53.length] = cd[68]
            storCFA4[stor53.length] = cd[100]
            storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 128]
            storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 160]
            storCFA4[stor53.length] = cd[196]
            storCFA4[stor53.length] = cd[228]
            storCFA4[stor53.length] = cd[228] + block.timestamp
            sub_bbe7180d[address(msg.sender)] = stor53.length
            mem[ceil32(('cd', 4).length) + ceil32(return_data.size) + 512 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
            mem[('cd', 4).length + ceil32(('cd', 4).length) + ceil32(return_data.size) + 512] = 61
            stor[mem[(2 * ceil32(('cd', 4).length)) + ceil32(return_data.size) + 512 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256] = stor53.length
    else:
        if stor[mem[(2 * ceil32(('cd', 4).length)) + 192 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256] <= 0:
            if not cd[100]:
                revert with 0, 'the value of tokenAmount0 is zero'
            if not mem[ceil32(('cd', 4).length) + 128]:
                revert with 0, 'the value of amountMax1 is zero'
            if not mem[ceil32(('cd', 4).length) + 160]:
                revert with 0, 'the value of amountMin1 is zero'
            if mem[ceil32(('cd', 4).length) + 128] <= mem[ceil32(('cd', 4).length) + 160]:
                revert with 0, 'amountMax1 should larger than amountMin1'
            if not cd[228]:
                revert with 0, 'the value of duration is zero'
            if cd[228] > 720 * 24 * 3600:
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
            call address(cd[36]).safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), cd[68], cd[100], 160, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if cd[228] + block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            if not cd[260]:
                if not cd[292]:
                    stor53.length++
                    storCFA4[stor53.length] = msg.sender
                    stor[sha3((10 * stor53.length) - 0x305b413e2cd67bf744a50303263bcfab63a4ce0755a3a7b7eae3f5aa0b8c3cb2)][] = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
                    storCFA4[stor53.length] = address(cd[36])
                    storCFA4[stor53.length] = cd[68]
                    storCFA4[stor53.length] = cd[100]
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 128]
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 160]
                    storCFA4[stor53.length] = cd[196]
                    storCFA4[stor53.length] = cd[228]
                    storCFA4[stor53.length] = cd[228] + block.timestamp
                    sub_bbe7180d[address(msg.sender)] = stor53.length
                    mem[ceil32(('cd', 4).length) + ceil32(return_data.size) + 512 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
                else:
                    sub_72d774c3[stor53.length] = cd[292]
                    stor53.length++
                    storCFA4[stor53.length] = msg.sender
                    stor[sha3((10 * stor53.length) - 0x305b413e2cd67bf744a50303263bcfab63a4ce0755a3a7b7eae3f5aa0b8c3cb2)][] = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
                    storCFA4[stor53.length] = address(cd[36])
                    storCFA4[stor53.length] = cd[68]
                    storCFA4[stor53.length] = cd[100]
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 128]
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 160]
                    storCFA4[stor53.length] = cd[196]
                    storCFA4[stor53.length] = cd[228]
                    storCFA4[stor53.length] = cd[228] + block.timestamp
                    sub_bbe7180d[address(msg.sender)] = stor53.length
                    mem[ceil32(('cd', 4).length) + ceil32(return_data.size) + 512 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
                    var90001 = ceil32(('cd', 4).length)
                mem[('cd', 4).length + ceil32(('cd', 4).length) + ceil32(return_data.size) + 512] = 61
                stor[mem[(2 * ceil32(('cd', 4).length)) + ceil32(return_data.size) + 512 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256] = stor53.length
            else:
                stor55[stor53.length] = uint8(bool(cd[260]))
                if not cd[292]:
                    stor53.length++
                    storCFA4[stor53.length] = msg.sender
                    stor[sha3((10 * stor53.length) - 0x305b413e2cd67bf744a50303263bcfab63a4ce0755a3a7b7eae3f5aa0b8c3cb2)][] = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
                    storCFA4[stor53.length] = address(cd[36])
                    storCFA4[stor53.length] = cd[68]
                    storCFA4[stor53.length] = cd[100]
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 128]
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 160]
                    storCFA4[stor53.length] = cd[196]
                    storCFA4[stor53.length] = cd[228]
                    storCFA4[stor53.length] = cd[228] + block.timestamp
                    sub_bbe7180d[address(msg.sender)] = stor53.length
                    mem[ceil32(('cd', 4).length) + ceil32(return_data.size) + 512 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
                    var90001 = ceil32(('cd', 4).length)
                else:
                    sub_72d774c3[stor53.length] = cd[292]
                    stor53.length++
                    storCFA4[stor53.length] = msg.sender
                    stor[sha3((10 * stor53.length) - 0x305b413e2cd67bf744a50303263bcfab63a4ce0755a3a7b7eae3f5aa0b8c3cb2)][] = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
                    storCFA4[stor53.length] = address(cd[36])
                    storCFA4[stor53.length] = cd[68]
                    storCFA4[stor53.length] = cd[100]
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 128]
                    storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 160]
                    storCFA4[stor53.length] = cd[196]
                    storCFA4[stor53.length] = cd[228]
                    storCFA4[stor53.length] = cd[228] + block.timestamp
                    sub_bbe7180d[address(msg.sender)] = stor53.length
                    mem[ceil32(('cd', 4).length) + ceil32(return_data.size) + 512 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
                    var91001 = ceil32(('cd', 4).length)
                mem[('cd', 4).length + ceil32(('cd', 4).length) + ceil32(return_data.size) + 512] = 61
                stor[mem[(2 * ceil32(('cd', 4).length)) + ceil32(return_data.size) + 512 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256] = stor53.length
        else:
            mem[ceil32(('cd', 4).length) + 192 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
            mem[('cd', 4).length + ceil32(('cd', 4).length) + 192] = 61
            require stor[mem[(2 * ceil32(('cd', 4).length)) + 192 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256] - 1 < stor53.length
            if sub_bbe7180d[address(stor53[stor[mem[(2 * ceil32(('cd', 4).length)) + 192 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256]].field_0)] > 0:
                require stor[mem[(2 * ceil32(('cd', 4).length)) + 192 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256] - 1 < stor53.length
                if stor53[stor[mem[(2 * ceil32(('cd', 4).length)) + 192 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256]].field_0 > block.timestamp:
                    revert with 0, 'a live pool has been created by this name'
            if not cd[100]:
                revert with 0, 'the value of tokenAmount0 is zero'
            if not mem[ceil32(('cd', 4).length) + 128]:
                revert with 0, 'the value of amountMax1 is zero'
            if not mem[ceil32(('cd', 4).length) + 160]:
                revert with 0, 'the value of amountMin1 is zero'
            if mem[ceil32(('cd', 4).length) + 128] <= mem[ceil32(('cd', 4).length) + 160]:
                revert with 0, 'amountMax1 should larger than amountMin1'
            if not cd[228]:
                revert with 0, 'the value of duration is zero'
            if cd[228] > 720 * 24 * 3600:
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
            call address(cd[36]).safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), cd[68], cd[100], 160, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if cd[228] + block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            if cd[260]:
                stor55[stor53.length] = uint8(bool(cd[260]))
            if cd[292]:
                sub_72d774c3[stor53.length] = cd[292]
            stor53.length++
            storCFA4[stor53.length] = msg.sender
            stor[sha3((10 * stor53.length) - 0x305b413e2cd67bf744a50303263bcfab63a4ce0755a3a7b7eae3f5aa0b8c3cb2)][] = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
            storCFA4[stor53.length] = address(cd[36])
            storCFA4[stor53.length] = cd[68]
            storCFA4[stor53.length] = cd[100]
            storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 128]
            storCFA4[stor53.length] = mem[ceil32(('cd', 4).length) + 160]
            storCFA4[stor53.length] = cd[196]
            storCFA4[stor53.length] = cd[228]
            storCFA4[stor53.length] = cd[228] + block.timestamp
            sub_bbe7180d[address(msg.sender)] = stor53.length
            mem[ceil32(('cd', 4).length) + ceil32(return_data.size) + 512 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
            mem[('cd', 4).length + ceil32(('cd', 4).length) + ceil32(return_data.size) + 512] = 61
            stor[mem[(2 * ceil32(('cd', 4).length)) + ceil32(return_data.size) + 512 len ('cd', 4).length + -ceil32(('cd', 4).length) + 32]][Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256] = stor53.length
    emit 0xf954cec4: 32, msg.sender, 320, cd[36] << 192, cd[68], cd[100], mem[ceil32(('cd', 4).length) + 128], mem[ceil32(('cd', 4).length) + 160], cd[196], cd[228], cd[228] + block.timestamp, ('cd', 4).length, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
}



}
