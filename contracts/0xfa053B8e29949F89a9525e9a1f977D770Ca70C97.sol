contract main {




// =====================  Runtime code  =====================


#
#  - hatch(uint256 arg1, uint256 arg2)
#  - sub_3a5bb7af(?)
#
const GEN0_GENERATION_FACTOR = 10


address owner;
uint256 autoCrackingFee;
uint256 baseHatchingFee;
address alpaAddress;
address devAddress;
address sub_a8356e4dAddress;
uint256 devBreedingPercentage;
uint256 secondsPerBlock;
uint256 newBornCoolDown;
uint256 hatchingDuration;
uint256 hatchingMultiplierCoolDown;
uint16 maxHatchCostMultiplier;
uint256 generationHatchingFeeMultiplier;
address geneScienceAddress;
array of struct stor14;
array of struct stor15;
mapping of uint256 stor16;
mapping of uint8 stor17;
mapping of uint256 balanceOf;
mapping of uint8 stor19;
array of uint256 uri;
uint256 stor21;
address operatorAddress;
array of struct stor84800337471693920904250232874319843718400766719524250287777680170677855896574;
array of struct stor84800337471693920904250232874319843718400766719524250287777680170677855896575;

function balanceOf(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[207 len 21]
    return balanceOf[arg2][address(arg1)]
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor17[Mask(32, 224, arg1)])
}

function uri(uint256 arg1) {
    return uri[0 len uri.length]
}

function hatchingDuration() {
    return hatchingDuration
}

function hatchingMultiplierCoolDown() {
    return hatchingMultiplierCoolDown
}

function getTotalAlpaca() {
    return stor14.length
}

function devAddress() {
    return devAddress
}

function devBreedingPercentage() {
    return devBreedingPercentage
}

function operator() {
    return operatorAddress
}

function alpa() {
    return alpaAddress
}

function secondsPerBlock() {
    return secondsPerBlock
}

function owner() {
    return owner
}

function baseHatchingFee() {
    return baseHatchingFee
}

function generationHatchingFeeMultiplier() {
    return generationHatchingFeeMultiplier
}

function newBornCoolDown() {
    return newBornCoolDown
}

function sub_a8356e4d(?) {
    return sub_a8356e4dAddress
}

function autoCrackingFee() {
    return autoCrackingFee
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor19[address(arg1)][address(arg2)])
}

function maxHatchCostMultiplier() {
    return maxHatchCostMultiplier
}

function geneScience() {
    return geneScienceAddress
}

function _fallback() payable {
    revert
}

function setDevAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == devAddress
    devAddress = arg1
}

function transferOperator(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == operatorAddress
    require arg1
    operatorAddress = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setAlpaContract(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    alpaAddress = arg1
}

function setNewBornCoolDown(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    newBornCoolDown = arg1
}

function setSecondsPerBlock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    secondsPerBlock = arg1
}

function setAutoCrackingFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    autoCrackingFee = arg1
}

function setBaseHatchingFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    baseHatchingFee = arg1
}

function setHatchingDuration(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    hatchingDuration = arg1
}

function setMaxHatchCostMultiplier(uint16 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    maxHatchCostMultiplier = arg1
}

function setHatchingMultiplierCoolDown(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    hatchingMultiplierCoolDown = arg1
}

function sub_3f193ced(?) {
    require calldata.size - 4 >= 64
    require msg.sender == operatorAddress
    require arg1 < stor14.length
    stor14[arg1].field_0 = arg2
    emit 0x98560bac: stor14[arg1].field_0, arg2, arg1
}

function setGenerationHatchingFeeMultiplier(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    generationHatchingFeeMultiplier = arg1
}

function sub_768220f1(?) {
    require calldata.size - 4 >= 64
    require msg.sender == operatorAddress
    require arg1 < stor14.length
    stor14[arg1].field_416 = arg2
    emit 0xcfe93ae1: stor14[arg1].field_256, arg2, arg1
}

function sub_e5774cac(?) {
    require calldata.size - 4 >= 64
    require msg.sender == operatorAddress
    require arg1 < stor14.length
    stor14[arg1].field_352 = arg2
    emit 0xcfe93ae1: stor14[arg1].field_256, arg2, arg1
}

function sub_fe3bd6b7(?) {
    require calldata.size - 4 >= 64
    require msg.sender == operatorAddress
    require arg1 < stor14.length
    stor14[arg1].field_512 = arg2
    emit 0x147a9e10: stor14[arg1].field_512, arg2, arg1
}

function setDevBreedingPercentage(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require devBreedingPercentage <= 100
    devBreedingPercentage = arg1
}

function isReadyToCrack(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor14.length
    require stor14[arg1].field_640 <= 1
    if stor14[arg1].field_640:
        return not stor14[arg1].field_640
    return stor14[arg1].field_512 <= uint64(block.number)
}

function withdrawBalance(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    uri[] = Array(len=arg1.length, data=arg1[all])
}

function isOwnerOf(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[207 len 21]
    return (1 == balanceOf[arg2][address(arg1)])
}

function setGeneScience(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.0xc2f5ddc5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    geneScienceAddress = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x72455243313135353a2073657474696e6720617070726f76616c2073746174757320666f722073656c,
                    mem[205 len 23]
    stor19[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function hasPermissionToBreedAsSire(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[207 len 21]
    if 1 == balanceOf[arg2][address(arg1)]:
        return 1
    if not stor16[arg2]:
        return bool(stor16[arg2])
    if not stor16[arg2]:
        revert with 0, 'EnumerableMap: nonexistent key'
    require stor16[arg2] - 1 < stor15.length
    return (stor15[stor16[arg2] - 1].field_256 == arg1)
}

function grandPermissionToBreed(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[207 len 21]
    require 1 == balanceOf[arg2][address(msg.sender)]
    if stor16[arg2]:
        require stor16[arg2] - 1 < stor15.length
        stor15[stor16[arg2] - 1].field_256 = arg1
        stor15[stor16[arg2] - 1].field_416 = 0
    else:
        stor15.length++
        stor15[stor15.length].field_0 = arg2
        stor15[stor15.length].field_256 = arg1
        stor15[stor15.length].field_416 = 0
        stor16[arg2] = stor15.length
    emit GrantedToBreed(arg1, arg2);
}

function clearPermissionToBreed(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[207 len 21]
    require 1 == balanceOf[arg1][address(msg.sender)]
    if stor16[arg1]:
        require stor15.length - 1 < stor15.length
        require stor16[arg1] - 1 < stor15.length
        stor15[stor16[arg1] - 1].field_0 = stor15[stor15.length - 1].field_0
        stor15[stor16[arg1] - 1].field_256 = stor15[stor15.length - 1].field_256
        stor16[stor15[stor15.length - 1].field_0] = stor16[arg1]
        require stor15.length
        stor15[stor15.length - 1].field_0 = 0
        stor15[stor15.length - 1].field_256 = 0
        stor15.length--
        stor16[arg1] = 0
    emit 0x1b7016bb: arg1
}

function crack(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor21 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor21 = 2
    require arg1 < stor14.length
    if not stor14[arg1].field_288:
        revert with 0, 'AC: invalid egg'
    require stor14[arg1].field_640 <= 1
    if stor14[arg1].field_640:
        revert with 0, 'AC: invalid egg'
    require stor14[arg1].field_640 <= 1
    if stor14[arg1].field_640:
        revert with 0, 'AC: not ready'
    if stor14[arg1].field_512 >= uint64(block.number):
        revert with 0, 'AC: not ready'
    require stor14[arg1].field_432 < stor14.length
    require stor14[arg1].field_464 < stor14.length
    if 1 > stor14[arg1].field_512:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(geneScienceAddress)
    staticcall geneScienceAddress.0x47ee978f with:
            gas gas_remaining wei
           args stor14[arg1].field_256, stor14[stor14[arg1].field_432].field_256, stor14[stor14[arg1].field_432].field_256, stor14[stor14[arg1].field_432].field_0, stor14[arg1].field_256, stor14[stor14[arg1].field_464].field_256, stor14[stor14[arg1].field_464].field_256, stor14[stor14[arg1].field_464].field_0, stor14[arg1].field_256, stor14[arg1].field_512 - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    stor14[arg1].field_0 = ext_call.return_data[0]
    stor14[arg1].field_256 = uint32(ext_call.return_data[32])
    stor14[arg1].field_640 = 1
    if not secondsPerBlock:
        revert with 0, 'SafeMath: division by zero'
    if block.number + (newBornCoolDown / secondsPerBlock) < newBornCoolDown / secondsPerBlock:
        revert with 0, 'SafeMath: addition overflow'
    stor14[arg1].field_512 = uint64(block.number + (newBornCoolDown / secondsPerBlock))
    stor14[arg1].field_576 = uint64(ext_call.return_data[64])
    if autoCrackingFee:
        call msg.sender with:
           value autoCrackingFee wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit BornSingle(ext_call.return_data[0], ext_call.return_data[32], arg1);
    stor21 = 1
}

function balanceOfBatch(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if arg1.length != arg2.length:
        revert with 0, 
                    32,
                    41,
                    0x66455243313135353a206163636f756e747320616e6420696473206c656e677468206d69736d617463,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 269 len 23]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 
                        32,
                        49,
                        0x73455243313135353a2062617463682062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                        mem[(64 * arg1.length) + (32 * arg2.length) + 309 len 15]
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(mem[(32 * idx) + (32 * arg1.length) + 160], 18)
        require idx < arg1.length
        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = balanceOf[mem[(32 * idx) + (32 * arg1.length) + 160]][mem[(32 * idx) + 140 len 20]]
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + (32 * arg2.length) + 192] = 32
    mem[(64 * arg1.length) + (32 * arg2.length) + 224] = arg1.length
    mem[(64 * arg1.length) + (32 * arg2.length) + 256 len floor32(arg1.length)] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(arg1.length)]
    return memory
      from (64 * arg1.length) + (32 * arg2.length) + 192
       len (161 * arg1.length) + 64
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if not arg2:
        revert with 0, 
                    32,
                    37,
                    0x64455243313135353a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[ceil32(arg5.length) + 233 len 27]
    if arg1 != msg.sender:
        if not stor19[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        41,
                        0x73455243313135353a2063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                        mem[ceil32(arg5.length) + 237 len 23]
    mem[ceil32(arg5.length) + 128] = 1
    require 0 < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
    mem[ceil32(arg5.length) + 160] = arg3
    mem[ceil32(arg5.length) + 192] = 1
    mem[ceil32(arg5.length) + 224] = arg4
    idx = 0
    while idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]:
        require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
        mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
        mem[32] = 16
        if stor16[mem[(32 * idx) + ceil32(arg5.length) + 160]]:
            require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
            mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
            mem[32] = 16
            if stor16[mem[(32 * idx) + ceil32(arg5.length) + 160]]:
                require stor15.length - 1 < stor15.length
                require stor16[mem[(32 * idx) + ceil32(arg5.length) + 160]] - 1 < stor15.length
                stor15[stor16[mem[(32 * idx) + ceil32(arg5.length) + 160]] - 1].field_0 = stor15[stor15.length - 1].field_0
                stor15[stor16[mem[(32 * idx) + ceil32(arg5.length) + 160]] - 1].field_256 = stor15[stor15.length - 1].field_256
                stor16[stor15[stor15.length - 1].field_0] = stor16[mem[(32 * idx) + ceil32(arg5.length) + 160]]
                require stor15.length
                stor15[stor15.length - 1].field_0 = 0
                stor15[stor15.length - 1].field_256 = 0
                stor15.length--
                mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                mem[32] = 16
                stor16[mem[(32 * idx) + ceil32(arg5.length) + 160]] = 0
        idx = idx + 1
        continue 
    if arg4 > balanceOf[arg3][address(arg1)]:
        revert with 0, 
                    32,
                    42,
                    0x64455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665,
                    mem[ceil32(arg5.length) + 330 len 22],
                    mem[ceil32(arg5.length) + 374 len 10]
    balanceOf[arg3][address(arg1)] -= arg4
    if arg4 + balanceOf[arg3][arg2] < balanceOf[arg3][arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[arg3][address(arg2)] = arg4 + balanceOf[arg3][arg2]
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
        if not ext_call.success:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        Mask(96, 0, arg4)
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 32, 40, 0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg4)
}

function getAlpaca(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor14.length
    if not stor14[arg1].field_496:
        if baseHatchingFee < baseHatchingFee:
            revert with 0, 'SafeMath: addition overflow'
        if stor14[arg1].field_352 > block.number:
            if stor14[arg1].field_640 <= 1:
                return arg1, 
                       stor14[arg1].field_512 <= block.number,
                       stor14[arg1].field_512,
                       stor14[arg1].field_256,
                       stor14[arg1].field_432,
                       stor14[arg1].field_256,
                       baseHatchingFee,
                       stor14[arg1].field_256,
                       stor14[arg1].field_256,
                       stor14[arg1].field_256,
                       stor14[arg1].field_0,
                       stor14[arg1].field_256,
                       stor14[arg1].field_640
        else:
            if stor14[arg1].field_640 <= 1:
                return arg1, 
                       stor14[arg1].field_512 <= block.number,
                       stor14[arg1].field_512,
                       stor14[arg1].field_256,
                       stor14[arg1].field_432,
                       stor14[arg1].field_256,
                       baseHatchingFee,
                       1,
                       stor14[arg1].field_256,
                       stor14[arg1].field_256,
                       stor14[arg1].field_0,
                       stor14[arg1].field_256,
                       stor14[arg1].field_640
    else:
        if generationHatchingFeeMultiplier * stor14[arg1].field_496 / stor14[arg1].field_496 != generationHatchingFeeMultiplier:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not generationHatchingFeeMultiplier * stor14[arg1].field_496:
            if baseHatchingFee < baseHatchingFee:
                revert with 0, 'SafeMath: addition overflow'
            if stor14[arg1].field_352 > block.number:
                if stor14[arg1].field_640 <= 1:
                    return arg1, 
                           stor14[arg1].field_512 <= block.number,
                           stor14[arg1].field_512,
                           stor14[arg1].field_256,
                           stor14[arg1].field_432,
                           stor14[arg1].field_256,
                           baseHatchingFee,
                           stor14[arg1].field_256,
                           stor14[arg1].field_256,
                           stor14[arg1].field_256,
                           stor14[arg1].field_0,
                           stor14[arg1].field_256,
                           stor14[arg1].field_640
            else:
                if stor14[arg1].field_640 <= 1:
                    return arg1, 
                           stor14[arg1].field_512 <= block.number,
                           stor14[arg1].field_512,
                           stor14[arg1].field_256,
                           stor14[arg1].field_432,
                           stor14[arg1].field_256,
                           baseHatchingFee,
                           1,
                           stor14[arg1].field_256,
                           stor14[arg1].field_256,
                           stor14[arg1].field_0,
                           stor14[arg1].field_256,
                           stor14[arg1].field_640
        else:
            if 10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 / generationHatchingFeeMultiplier * stor14[arg1].field_496 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee < baseHatchingFee:
                revert with 0, 'SafeMath: addition overflow'
            if stor14[arg1].field_352 > block.number:
                if stor14[arg1].field_640 <= 1:
                    return arg1, 
                           stor14[arg1].field_512 <= block.number,
                           stor14[arg1].field_512,
                           stor14[arg1].field_256,
                           stor14[arg1].field_432,
                           stor14[arg1].field_256,
                           (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee,
                           stor14[arg1].field_256,
                           stor14[arg1].field_256,
                           stor14[arg1].field_256,
                           stor14[arg1].field_0,
                           stor14[arg1].field_256,
                           stor14[arg1].field_640
            else:
                if stor14[arg1].field_640 <= 1:
                    return arg1, 
                           stor14[arg1].field_512 <= block.number,
                           stor14[arg1].field_512,
                           stor14[arg1].field_256,
                           stor14[arg1].field_432,
                           stor14[arg1].field_256,
                           (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee,
                           1,
                           stor14[arg1].field_256,
                           stor14[arg1].field_256,
                           stor14[arg1].field_0,
                           stor14[arg1].field_256,
                           stor14[arg1].field_640
    ('gt', ('field', 640, ('stor', ('array', ('mul', 3, ('param', 'arg1')), ('name', 'stor14', 14)))), 1)
    revert
}

function sub_7f951fc8(?) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor14.length++
    stor14[stor14.length].field_0 = arg1
    storBB7B[stor14.length].field_0 = arg2
    storBB7B[stor14.length].field_32 = uint64(block.timestamp)
    storBB7B[stor14.length].field_96 = 0
    storBB7B[stor14.length].field_160 = 1
    storBB7B[stor14.length].field_168 = 0
    storBB7B[stor14.length].field_240 = arg3
    storBB7B[stor14.length].field_256 = 0
    storBB7B[stor14.length].field_256 = 0
    storBB7B[stor14.length].field_256 = 0
    storBB7B[stor14.length].field_0 = 0
    storBB7B[stor14.length].field_64 = 10
    storBB7B[stor14.length].field_72 = 0
    storBB7B[stor14.length].field_256 = 0
    storBB7B[stor14.length].field_0 = 0
    storBB7B[stor14.length].field_64 = 10
    storBB7B[stor14.length].field_72 = 0
    storBB7B[stor14.length].field_128 = 1
    storBB7B[stor14.length].field_256 = 0
    if arg4:
        if not arg4:
            revert with 0, 32, 33, 0x68455243313135353a206d696e7420746f20746865207a65726f20616464726573, mem[933 len 31]
        mem[864] = stor14.length - 1
        mem[896] = 1
        mem[928] = 1
        idx = 0
        while idx < 1:
            require idx < 1
            mem[0] = mem[(32 * idx) + 864]
            mem[32] = 16
            if stor16[mem[(32 * idx) + 864]]:
                require idx < 1
                mem[0] = mem[(32 * idx) + 864]
                mem[32] = 16
                if stor16[mem[(32 * idx) + 864]]:
                    require stor15.length - 1 < stor15.length
                    require stor16[mem[(32 * idx) + 864]] - 1 < stor15.length
                    stor15[stor16[mem[(32 * idx) + 864]] - 1].field_0 = stor15[stor15.length - 1].field_0
                    stor15[stor16[mem[(32 * idx) + 864]] - 1].field_256 = stor15[stor15.length - 1].field_256
                    stor16[stor15[stor15.length - 1].field_0] = stor16[mem[(32 * idx) + 864]]
                    require stor15.length
                    stor15[stor15.length - 1].field_0 = 0
                    stor15[stor15.length - 1].field_256 = 0
                    stor15.length--
                    mem[0] = mem[(32 * idx) + 864]
                    mem[32] = 16
                    stor16[mem[(32 * idx) + 864]] = 0
            idx = idx + 1
            continue 
        if balanceOf[stor14.length - 1][address(arg4)] + 1 < balanceOf[stor14.length - 1][address(arg4)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[stor14.length - 1][address(arg4)]++
        emit TransferSingle(stor14.length - 1, 1, msg.sender, 0, arg4);
        if ext_code.size(arg4):
            require ext_code.size(arg4)
            call arg4.onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                 gas gas_remaining wei
                args msg.sender, 0, stor14.length - 1, 1, 160, 0
            if not ext_call.success:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            0
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'rERC1155: ERC1155Receiver rejected token'
    else:
        if not owner:
            revert with 0, 32, 33, 0x68455243313135353a206d696e7420746f20746865207a65726f20616464726573, mem[933 len 31]
        mem[864] = stor14.length - 1
        mem[896] = 1
        mem[928] = 1
        idx = 0
        while idx < 1:
            require idx < 1
            mem[0] = mem[(32 * idx) + 864]
            mem[32] = 16
            if stor16[mem[(32 * idx) + 864]]:
                require idx < 1
                mem[0] = mem[(32 * idx) + 864]
                mem[32] = 16
                if stor16[mem[(32 * idx) + 864]]:
                    require stor15.length - 1 < stor15.length
                    require stor16[mem[(32 * idx) + 864]] - 1 < stor15.length
                    stor15[stor16[mem[(32 * idx) + 864]] - 1].field_0 = stor15[stor15.length - 1].field_0
                    stor15[stor16[mem[(32 * idx) + 864]] - 1].field_256 = stor15[stor15.length - 1].field_256
                    stor16[stor15[stor15.length - 1].field_0] = stor16[mem[(32 * idx) + 864]]
                    require stor15.length
                    stor15[stor15.length - 1].field_0 = 0
                    stor15[stor15.length - 1].field_256 = 0
                    stor15.length--
                    mem[0] = mem[(32 * idx) + 864]
                    mem[32] = 16
                    stor16[mem[(32 * idx) + 864]] = 0
            idx = idx + 1
            continue 
        if balanceOf[stor14.length - 1][stor0] + 1 < balanceOf[stor14.length - 1][stor0]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[stor14.length - 1][stor0]++
        emit TransferSingle(stor14.length - 1, 1, msg.sender, 0, owner);
        if ext_code.size(owner):
            require ext_code.size(owner)
            call owner.onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                 gas gas_remaining wei
                args msg.sender, 0, stor14.length - 1, 1, 160, 0
            if not ext_call.success:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            0
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'rERC1155: ERC1155Receiver rejected token'
    emit BornSingle(arg1, arg2, stor14.length - 1);
}

function updateAlpacaEnergy(address arg1, uint256 arg2, uint32 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == operatorAddress
    if stor21 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor21 = 2
    require arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[207 len 21]
    require 1 == balanceOf[arg2][address(arg1)]
    require arg2 < stor14.length
    stor14[arg2].field_256 = arg3
    emit EnergyChanged(stor14[arg2].field_256, arg3, arg2);
    if ext_code.size(arg1):
        staticcall arg1 with:
             funct Mask(32, 224, supportsInterface(bytes4 rg1), 0x1ffc9a70000000000000000000000000000000000000000) >> 224
                gas 30000 wei
               args Mask(224, 0, supportsInterface(bytes4 rg1), 0x1ffc9a70000000000000000000000000000000000000000), mem[196 len 4]
        if not return_data.size:
            if ext_call.success:
                if supportsInterface(bytes4 rg1), 0x1ffc9a70000000000000000000000000000000000000000:
                    staticcall arg1 with:
                            gas 30000 wei
                           args 0xffffffff000000000000000000000000000000000000000000000000, mem[264 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            require ext_code.size(arg1)
                            staticcall arg1.supportsInterface(bytes4 rg1) with:
                                    gas gas_remaining wei
                                   args 0x5a864e1c00000000000000000000000000000000000000000000000000000000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(arg1)
                                call arg1.onCryptoAlpacaEnergyChanged(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args arg2, stor14[arg2].field_256, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not supportsInterface(bytes4 rg1), 0x1ffc9a70000000000000000000000000000000000000000:
                                require ext_code.size(arg1)
                                staticcall arg1.supportsInterface(bytes4 rg1) with:
                                        gas gas_remaining wei
                                       args 0x5a864e1c00000000000000000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(arg1)
                                    call arg1.onCryptoAlpacaEnergyChanged(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                         gas gas_remaining wei
                                        args arg2, stor14[arg2].field_256, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[264 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if return_data.size < 32:
                            require ext_code.size(arg1)
                            staticcall arg1.supportsInterface(bytes4 rg1) with:
                                    gas gas_remaining wei
                                   args 0x5a864e1c00000000000000000000000000000000000000000000000000000000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(arg1)
                                call arg1.onCryptoAlpacaEnergyChanged(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args arg2, stor14[arg2].field_256, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            if not ext_call.success:
                                require ext_code.size(arg1)
                                staticcall arg1.supportsInterface(bytes4 rg1) with:
                                        gas gas_remaining wei
                                       args 0x5a864e1c00000000000000000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(arg1)
                                    call arg1.onCryptoAlpacaEnergyChanged(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                         gas gas_remaining wei
                                        args arg2, stor14[arg2].field_256, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not mem[264 len 28], 0:
                                    require ext_code.size(arg1)
                                    staticcall arg1.supportsInterface(bytes4 rg1) with:
                                            gas gas_remaining wei
                                           args 0x5a864e1c00000000000000000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(arg1)
                                        call arg1.onCryptoAlpacaEnergyChanged(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                             gas gas_remaining wei
                                            args arg2, stor14[arg2].field_256, arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if return_data.size >= 32:
                require return_data.size >= 32
                if ext_call.success:
                    if mem[196 len 28], Mask(32, 32, supportsInterface(bytes4 rg1), 0x1ffc9a70000000000000000000000000000000000000000) >> 32:
                        staticcall arg1 with:
                                gas 30000 wei
                               args 0xffffffff000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 265 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                require ext_code.size(arg1)
                                staticcall arg1.supportsInterface(bytes4 rg1) with:
                                        gas gas_remaining wei
                                       args 0x5a864e1c00000000000000000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(arg1)
                                    call arg1.onCryptoAlpacaEnergyChanged(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                         gas gas_remaining wei
                                        args arg2, stor14[arg2].field_256, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not supportsInterface(bytes4 rg1), 0x1ffc9a70000000000000000000000000000000000000000:
                                    require ext_code.size(arg1)
                                    staticcall arg1.supportsInterface(bytes4 rg1) with:
                                            gas gas_remaining wei
                                           args 0x5a864e1c00000000000000000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(arg1)
                                        call arg1.onCryptoAlpacaEnergyChanged(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                             gas gas_remaining wei
                                            args arg2, stor14[arg2].field_256, arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[ceil32(return_data.size) + 265 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if return_data.size < 32:
                                require ext_code.size(arg1)
                                staticcall arg1.supportsInterface(bytes4 rg1) with:
                                        gas gas_remaining wei
                                       args 0x5a864e1c00000000000000000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(arg1)
                                    call arg1.onCryptoAlpacaEnergyChanged(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                         gas gas_remaining wei
                                        args arg2, stor14[arg2].field_256, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                if not ext_call.success:
                                    require ext_code.size(arg1)
                                    staticcall arg1.supportsInterface(bytes4 rg1) with:
                                            gas gas_remaining wei
                                           args 0x5a864e1c00000000000000000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(arg1)
                                        call arg1.onCryptoAlpacaEnergyChanged(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                             gas gas_remaining wei
                                            args arg2, stor14[arg2].field_256, arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not mem[ceil32(return_data.size) + 265 len 28], 0:
                                        require ext_code.size(arg1)
                                        staticcall arg1.supportsInterface(bytes4 rg1) with:
                                                gas gas_remaining wei
                                               args 0x5a864e1c00000000000000000000000000000000000000000000000000000000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_code.size(arg1)
                                            call arg1.onCryptoAlpacaEnergyChanged(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                                 gas gas_remaining wei
                                                args arg2, stor14[arg2].field_256, arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
    stor21 = 1
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len arg5.length] = arg5[all]
    mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 192] = 0
    if arg3.length != arg4.length:
        revert with 0, 
                    32,
                    40,
                    0x68455243313135353a2069647320616e6420616d6f756e7473206c656e677468206d69736d617463,
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 300 len 24]
    if not arg2:
        revert with 0, 
                    32,
                    37,
                    0x64455243313135353a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 297 len 27]
    if arg1 == msg.sender:
        idx = 0
        while idx < arg3.length:
            require idx < arg3.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 16
            if stor16[mem[(32 * idx) + 128]]:
                require idx < arg3.length
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 16
                if stor16[mem[(32 * idx) + 128]]:
                    require stor15.length - 1 < stor15.length
                    require stor16[mem[(32 * idx) + 128]] - 1 < stor15.length
                    stor15[stor16[mem[(32 * idx) + 128]] - 1].field_0 = stor15[stor15.length - 1].field_0
                    stor15[stor16[mem[(32 * idx) + 128]] - 1].field_256 = stor15[stor15.length - 1].field_256
                    stor16[stor15[stor15.length - 1].field_0] = stor16[mem[(32 * idx) + 128]]
                    require stor15.length
                    stor15[stor15.length - 1].field_0 = 0
                    stor15[stor15.length - 1].field_256 = 0
                    stor15.length--
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 16
                    stor16[mem[(32 * idx) + 128]] = 0
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg3.length:
            require idx < mem[96]
            _492 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            _499 = mem[(32 * idx) + (32 * arg3.length) + 160]
            _500 = mem[64]
            mem[64] = mem[64] + 96
            mem[_500] = 42
            mem[_500 + 32 len 42] = 0x64455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
            mem[32] = sha3(_492, 18)
            if _499 <= balanceOf[_492][address(arg1)]:
                balanceOf[_492][address(arg1)] -= _499
                if _499 + balanceOf[_492][arg2] < balanceOf[_492][arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg2
                mem[32] = sha3(_492, 18)
                balanceOf[_492][address(arg2)] = _499 + balanceOf[_492][arg2]
                idx = idx + 1
                continue 
            _512 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 42
            idx = 0
            while idx < 42:
                mem[idx + _512 + 68] = mem[idx + _500 + 32]
                idx = idx + 32
                continue 
            mem[_512 + 100] = mem[_512 + 122 len 10]
            revert with memory
              from mem[64]
               len _512 + -mem[64] + 132
        _484 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _486 = mem[96]
        mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + _484 + 96] = mem[(32 * arg3.length) + 128]
        _693 = mem[(32 * arg3.length) + 128]
        mem[(32 * _486) + _484 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                           mem[mem[64] len (32 * _693) + (32 * _486) + _484 + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           arg2,
        if not ext_code.size(arg2):
        mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = mem[96]
        _866 = mem[96]
        mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 100] = (32 * mem[96]) + 192
        mem[(32 * mem[96]) + mem[64] + 196] = mem[(32 * arg3.length) + 128]
        _1015 = mem[(32 * arg3.length) + 128]
        mem[(32 * mem[96]) + mem[64] + 228 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        mem[mem[64] + 132] = (32 * _1015) + (32 * mem[96]) + 224
        mem[(32 * _1015) + (32 * mem[96]) + mem[64] + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        _1159 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        mem[(32 * _1015) + (32 * _866) + mem[64] + 260 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])]
        if not _1159 % 32:
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), 160, mem[mem[64] + 100 len _1159 + (32 * _1015) + (32 * _866) + 160]
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                40,
                                0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                                mem[mem[64] + 108 len 24]
            if return_data.size < 68:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            _1324 = mem[64]
            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
            if not _1324 + ext_call.return_data[0]:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            _1348 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_1324 + ext_call.return_data[0]]
            _1350 = mem[_1324 + ext_call.return_data[0]]
            if not mem[_1324 + ext_call.return_data[0]]:
                if not mem[_1324 + ext_call.return_data[0]] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[_1324 + ext_call.return_data[0]] + 32]
                mem[floor32(mem[_1324 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_1324 + ext_call.return_data[0]]) + mem[64] + -(mem[_1324 + ext_call.return_data[0]] % 32) + 100 len mem[_1324 + ext_call.return_data[0]] % 32]
                revert with memory
                  from mem[64]
                   len floor32(_1350) + _1348 + -mem[64] + 100
            mem[mem[64] + 68] = mem[_1324 + ext_call.return_data[0] + 32]
            mem[mem[64] + 100 len floor32(_1350 - 1)] = mem[_1324 + ext_call.return_data[0] + 64 len floor32(_1350 - 1)]
            if not _1350 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _1350 + 32]
            mem[floor32(_1350) + mem[64] + 68] = mem[floor32(_1350) + mem[64] + -(_1350 % 32) + 100 len _1350 % 32]
            revert with 0, 32, mem[mem[64] + 36 len floor32(_1350) + 64]
        mem[floor32(_1159) + (32 * _1015) + (32 * _866) + mem[64] + 260] = mem[floor32(_1159) + (32 * _1015) + (32 * _866) + mem[64] + -(_1159 % 32) + 292 len _1159 % 32]
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), 160, mem[mem[64] + 100 len floor32(_1159) + (32 * _1015) + (32 * _866) + 192]
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            40,
                            0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                            mem[mem[64] + 108 len 24]
        if return_data.size < 68:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        _1331 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
        if not _1331 + ext_call.return_data[0]:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_1331 + ext_call.return_data[0]]
        _1369 = mem[_1331 + ext_call.return_data[0]]
        if not mem[_1331 + ext_call.return_data[0]]:
            if not mem[_1331 + ext_call.return_data[0]] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[_1331 + ext_call.return_data[0]] + 32]
            mem[floor32(mem[_1331 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_1331 + ext_call.return_data[0]]) + mem[64] + -(mem[_1331 + ext_call.return_data[0]] % 32) + 100 len mem[_1331 + ext_call.return_data[0]] % 32]
            revert with 0, 32, mem[mem[64] + 36], 160, mem[mem[64] + 100 len floor32(_1369)]
        mem[mem[64] + 68] = mem[_1331 + ext_call.return_data[0] + 32]
        mem[mem[64] + 100 len floor32(_1369 - 1)] = mem[_1331 + ext_call.return_data[0] + 64 len floor32(_1369 - 1)]
        if not _1369 % 32:
            revert with 0, 32, mem[mem[64] + 36 len _1369 + 32]
        mem[floor32(_1369) + mem[64] + 68] = mem[floor32(_1369) + mem[64] + -(_1369 % 32) + 100 len _1369 % 32]
        revert with 0, 32, mem[mem[64] + 36 len floor32(_1369) + 64]
    mem[0] = msg.sender
    mem[32] = sha3(address(arg1), 19)
    if not stor19[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    50,
                    0x73455243313135353a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 310 len 14]
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 16
        if stor16[mem[(32 * idx) + 128]]:
            require idx < arg3.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 16
            if stor16[mem[(32 * idx) + 128]]:
                require stor15.length - 1 < stor15.length
                require stor16[mem[(32 * idx) + 128]] - 1 < stor15.length
                stor15[stor16[mem[(32 * idx) + 128]] - 1].field_0 = stor15[stor15.length - 1].field_0
                stor15[stor16[mem[(32 * idx) + 128]] - 1].field_256 = stor15[stor15.length - 1].field_256
                stor16[stor15[stor15.length - 1].field_0] = stor16[mem[(32 * idx) + 128]]
                require stor15.length
                stor15[stor15.length - 1].field_0 = 0
                stor15[stor15.length - 1].field_256 = 0
                stor15.length--
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 16
                stor16[mem[(32 * idx) + 128]] = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg3.length:
        require idx < mem[96]
        _494 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg3.length) + 128]
        _506 = mem[(32 * idx) + (32 * arg3.length) + 160]
        _507 = mem[64]
        mem[64] = mem[64] + 96
        mem[_507] = 42
        mem[_507 + 32 len 42] = 0x64455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
        mem[32] = sha3(_494, 18)
        if _506 <= balanceOf[_494][address(arg1)]:
            balanceOf[_494][address(arg1)] -= _506
            if _506 + balanceOf[_494][arg2] < balanceOf[_494][arg2]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = arg2
            mem[32] = sha3(_494, 18)
            balanceOf[_494][address(arg2)] = _506 + balanceOf[_494][arg2]
            idx = idx + 1
            continue 
        _517 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 42
        idx = 0
        while idx < 42:
            mem[idx + _517 + 68] = mem[idx + _507 + 32]
            idx = idx + 32
            continue 
        mem[_517 + 100] = mem[_517 + 122 len 10]
        revert with memory
          from mem[64]
           len _517 + -mem[64] + 132
    _488 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[96]
    _490 = mem[96]
    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    mem[(32 * mem[96]) + _488 + 96] = mem[(32 * arg3.length) + 128]
    _697 = mem[(32 * arg3.length) + 128]
    mem[(32 * _490) + _488 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
    emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                       mem[mem[64] len (32 * _697) + (32 * _490) + _488 + -mem[64] + 128],
                       msg.sender,
                       arg1,
                       arg2,
    if not ext_code.size(arg2):
    mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = arg1
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = mem[96]
    _869 = mem[96]
    mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 100] = (32 * mem[96]) + 192
    mem[(32 * mem[96]) + mem[64] + 196] = mem[(32 * arg3.length) + 128]
    _1018 = mem[(32 * arg3.length) + 128]
    mem[(32 * mem[96]) + mem[64] + 228 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
    mem[mem[64] + 132] = (32 * _1018) + (32 * mem[96]) + 224
    mem[(32 * _1018) + (32 * mem[96]) + mem[64] + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
    _1162 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
    mem[(32 * _1018) + (32 * mem[96]) + mem[64] + 260 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])]
    if not _1162 % 32:
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), Array(len=mem[96], data=mem[mem[64] + 196 len _1162 + (32 * _1018) + (32 * mem[96]) + 64]), (32 * mem[96]) + 192, (32 * _1018) + (32 * mem[96]) + 224
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            40,
                            0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                            mem[mem[64] + 108 len 24]
        if return_data.size < 68:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        _1326 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
        if not _1326 + ext_call.return_data[0]:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        _1355 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_1326 + ext_call.return_data[0]]
        _1357 = mem[_1326 + ext_call.return_data[0]]
        if not mem[_1326 + ext_call.return_data[0]]:
            if not mem[_1326 + ext_call.return_data[0]] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[_1326 + ext_call.return_data[0]] + 32]
            mem[floor32(mem[_1326 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_1326 + ext_call.return_data[0]]) + mem[64] + -(mem[_1326 + ext_call.return_data[0]] % 32) + 100 len mem[_1326 + ext_call.return_data[0]] % 32]
        else:
            mem[mem[64] + 68] = mem[_1326 + ext_call.return_data[0] + 32]
            mem[mem[64] + 100 len floor32(_1357 - 1)] = mem[_1326 + ext_call.return_data[0] + 64 len floor32(_1357 - 1)]
            if not _1357 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _1357 + 32]
            mem[floor32(_1357) + mem[64] + 68] = mem[floor32(_1357) + mem[64] + -(_1357 % 32) + 100 len _1357 % 32]
        revert with memory
          from mem[64]
           len floor32(_1357) + _1355 + -mem[64] + 100
    mem[floor32(_1162) + (32 * _1018) + (32 * mem[96]) + mem[64] + 260] = mem[floor32(_1162) + (32 * _1018) + (32 * mem[96]) + mem[64] + -(_1162 % 32) + 292 len _1162 % 32]
    require ext_code.size(arg2)
    call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _1018) + (32 * _869) + 224, mem[mem[64] + 164 len floor32(_1162) + (32 * _1018) + (32 * _869) + 128]
    mem[mem[64]] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
            revert with 0, 
                        32,
                        40,
                        0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                        mem[mem[64] + 108 len 24]
    if return_data.size < 68:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    _1336 = mem[64]
    mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    if mem[mem[64] + ext_call.return_data[0]] > test266151307():
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
    if not _1336 + ext_call.return_data[0]:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[_1336 + ext_call.return_data[0]]
    _1379 = mem[_1336 + ext_call.return_data[0]]
    if not mem[_1336 + ext_call.return_data[0]]:
        if not mem[_1336 + ext_call.return_data[0]] % 32:
            revert with 0, 32, mem[mem[64] + 36 len mem[_1336 + ext_call.return_data[0]] + 32]
        mem[floor32(mem[_1336 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_1336 + ext_call.return_data[0]]) + mem[64] + -(mem[_1336 + ext_call.return_data[0]] % 32) + 100 len mem[_1336 + ext_call.return_data[0]] % 32]
        revert with 0, 32, mem[mem[64] + 36], 160, mem[mem[64] + 100 len floor32(_1379)]
    mem[mem[64] + 68] = mem[_1336 + ext_call.return_data[0] + 32]
    mem[mem[64] + 100 len floor32(_1379 - 1)] = mem[_1336 + ext_call.return_data[0] + 64 len floor32(_1379 - 1)]
    if not _1379 % 32:
        revert with 0, 32, mem[mem[64] + 36 len _1379 + 32]
    mem[floor32(_1379) + mem[64] + 68] = mem[floor32(_1379) + mem[64] + -(_1379 % 32) + 100 len _1379 % 32]
    revert with 0, 32, mem[mem[64] + 36 len floor32(_1379) + 64]
}

function hatchingALPACost(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < stor14.length
    if not stor14[arg2].field_496:
        if baseHatchingFee < baseHatchingFee:
            revert with 0, 'SafeMath: addition overflow'
        require arg1 < stor14.length
        if block.number + 1 <= stor14[arg2].field_352:
            if not stor14[arg1].field_496:
                if baseHatchingFee < baseHatchingFee:
                    revert with 0, 'SafeMath: addition overflow'
                if not baseHatchingFee:
                    return 0
                if block.number + 1 <= stor14[arg1].field_352:
                    if stor14[arg1].field_416 * baseHatchingFee / baseHatchingFee != stor14[arg1].field_416:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not baseHatchingFee:
                        if stor14[arg1].field_416 * baseHatchingFee < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return (stor14[arg1].field_416 * baseHatchingFee)
                    if stor14[arg2].field_416 * baseHatchingFee / baseHatchingFee != stor14[arg2].field_416:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (stor14[arg1].field_416 * baseHatchingFee) + (stor14[arg2].field_416 * baseHatchingFee) < stor14[arg2].field_416 * baseHatchingFee:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((stor14[arg1].field_416 * baseHatchingFee) + (stor14[arg2].field_416 * baseHatchingFee))
                if baseHatchingFee / baseHatchingFee != 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not baseHatchingFee:
                    if baseHatchingFee < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return baseHatchingFee
                if stor14[arg2].field_416 * baseHatchingFee / baseHatchingFee != stor14[arg2].field_416:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if baseHatchingFee + (stor14[arg2].field_416 * baseHatchingFee) < stor14[arg2].field_416 * baseHatchingFee:
                    revert with 0, 'SafeMath: addition overflow'
                return (baseHatchingFee + (stor14[arg2].field_416 * baseHatchingFee))
            if generationHatchingFeeMultiplier * stor14[arg1].field_496 / stor14[arg1].field_496 != generationHatchingFeeMultiplier:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not generationHatchingFeeMultiplier * stor14[arg1].field_496:
                if baseHatchingFee < baseHatchingFee:
                    revert with 0, 'SafeMath: addition overflow'
                if not baseHatchingFee:
                    return 0
                if block.number + 1 <= stor14[arg1].field_352:
                    if stor14[arg1].field_416 * baseHatchingFee / baseHatchingFee != stor14[arg1].field_416:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not baseHatchingFee:
                        if stor14[arg1].field_416 * baseHatchingFee < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return (stor14[arg1].field_416 * baseHatchingFee)
                    if stor14[arg2].field_416 * baseHatchingFee / baseHatchingFee != stor14[arg2].field_416:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (stor14[arg1].field_416 * baseHatchingFee) + (stor14[arg2].field_416 * baseHatchingFee) < stor14[arg2].field_416 * baseHatchingFee:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((stor14[arg1].field_416 * baseHatchingFee) + (stor14[arg2].field_416 * baseHatchingFee))
                if baseHatchingFee / baseHatchingFee != 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not baseHatchingFee:
                    if baseHatchingFee < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return baseHatchingFee
                if stor14[arg2].field_416 * baseHatchingFee / baseHatchingFee != stor14[arg2].field_416:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if baseHatchingFee + (stor14[arg2].field_416 * baseHatchingFee) < stor14[arg2].field_416 * baseHatchingFee:
                    revert with 0, 'SafeMath: addition overflow'
                return (baseHatchingFee + (stor14[arg2].field_416 * baseHatchingFee))
            if 10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 / generationHatchingFeeMultiplier * stor14[arg1].field_496 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee < baseHatchingFee:
                revert with 0, 'SafeMath: addition overflow'
            if not (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee:
                if not baseHatchingFee:
                    return 0
                if stor14[arg2].field_416 * baseHatchingFee / baseHatchingFee != stor14[arg2].field_416:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if stor14[arg2].field_416 * baseHatchingFee < stor14[arg2].field_416 * baseHatchingFee:
                    revert with 0, 'SafeMath: addition overflow'
                return (stor14[arg2].field_416 * baseHatchingFee)
            if block.number + 1 <= stor14[arg1].field_352:
                if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 * stor14[arg1].field_416) + (baseHatchingFee * stor14[arg1].field_416) / (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee != stor14[arg1].field_416:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not baseHatchingFee:
                    if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 * stor14[arg1].field_416) + (baseHatchingFee * stor14[arg1].field_416) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 * stor14[arg1].field_416) + (baseHatchingFee * stor14[arg1].field_416))
                if stor14[arg2].field_416 * baseHatchingFee / baseHatchingFee != stor14[arg2].field_416:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 * stor14[arg1].field_416) + (baseHatchingFee * stor14[arg1].field_416) + (stor14[arg2].field_416 * baseHatchingFee) < stor14[arg2].field_416 * baseHatchingFee:
                    revert with 0, 'SafeMath: addition overflow'
                return ((10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 * stor14[arg1].field_416) + (baseHatchingFee * stor14[arg1].field_416) + (stor14[arg2].field_416 * baseHatchingFee))
            if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee / (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not baseHatchingFee:
                if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ((10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee)
            if stor14[arg2].field_416 * baseHatchingFee / baseHatchingFee != stor14[arg2].field_416:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee + (stor14[arg2].field_416 * baseHatchingFee) < stor14[arg2].field_416 * baseHatchingFee:
                revert with 0, 'SafeMath: addition overflow'
            return ((10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee + (stor14[arg2].field_416 * baseHatchingFee))
        if not stor14[arg1].field_496:
            if baseHatchingFee < baseHatchingFee:
                revert with 0, 'SafeMath: addition overflow'
            if not baseHatchingFee:
                return 0
            if block.number + 1 <= stor14[arg1].field_352:
                if stor14[arg1].field_416 * baseHatchingFee / baseHatchingFee != stor14[arg1].field_416:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not baseHatchingFee:
                    if stor14[arg1].field_416 * baseHatchingFee < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return (stor14[arg1].field_416 * baseHatchingFee)
                if baseHatchingFee / baseHatchingFee != 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (stor14[arg1].field_416 * baseHatchingFee) + baseHatchingFee < baseHatchingFee:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor14[arg1].field_416 * baseHatchingFee) + baseHatchingFee)
            if baseHatchingFee / baseHatchingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not baseHatchingFee:
                if baseHatchingFee < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return baseHatchingFee
            if baseHatchingFee / baseHatchingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 2 * baseHatchingFee < baseHatchingFee:
                revert with 0, 'SafeMath: addition overflow'
            return (2 * baseHatchingFee)
        if generationHatchingFeeMultiplier * stor14[arg1].field_496 / stor14[arg1].field_496 != generationHatchingFeeMultiplier:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not generationHatchingFeeMultiplier * stor14[arg1].field_496:
            if baseHatchingFee < baseHatchingFee:
                revert with 0, 'SafeMath: addition overflow'
            if not baseHatchingFee:
                return 0
            if block.number + 1 <= stor14[arg1].field_352:
                if stor14[arg1].field_416 * baseHatchingFee / baseHatchingFee != stor14[arg1].field_416:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not baseHatchingFee:
                    if stor14[arg1].field_416 * baseHatchingFee < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return (stor14[arg1].field_416 * baseHatchingFee)
                if baseHatchingFee / baseHatchingFee != 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (stor14[arg1].field_416 * baseHatchingFee) + baseHatchingFee < baseHatchingFee:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor14[arg1].field_416 * baseHatchingFee) + baseHatchingFee)
            if baseHatchingFee / baseHatchingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not baseHatchingFee:
                if baseHatchingFee < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return baseHatchingFee
            if baseHatchingFee / baseHatchingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 2 * baseHatchingFee < baseHatchingFee:
                revert with 0, 'SafeMath: addition overflow'
            return (2 * baseHatchingFee)
        if 10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 / generationHatchingFeeMultiplier * stor14[arg1].field_496 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee < baseHatchingFee:
            revert with 0, 'SafeMath: addition overflow'
        if not (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee:
            if not baseHatchingFee:
                return 0
            if baseHatchingFee / baseHatchingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if baseHatchingFee < baseHatchingFee:
                revert with 0, 'SafeMath: addition overflow'
            return baseHatchingFee
        if block.number + 1 <= stor14[arg1].field_352:
            if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 * stor14[arg1].field_416) + (baseHatchingFee * stor14[arg1].field_416) / (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee != stor14[arg1].field_416:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not baseHatchingFee:
                if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 * stor14[arg1].field_416) + (baseHatchingFee * stor14[arg1].field_416) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ((10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 * stor14[arg1].field_416) + (baseHatchingFee * stor14[arg1].field_416))
            if baseHatchingFee / baseHatchingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 * stor14[arg1].field_416) + (baseHatchingFee * stor14[arg1].field_416) + baseHatchingFee < baseHatchingFee:
                revert with 0, 'SafeMath: addition overflow'
            return ((10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 * stor14[arg1].field_416) + (baseHatchingFee * stor14[arg1].field_416) + baseHatchingFee)
        if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee / (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not baseHatchingFee:
            if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee)
        if baseHatchingFee / baseHatchingFee != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + (2 * baseHatchingFee) < baseHatchingFee:
            revert with 0, 'SafeMath: addition overflow'
        return ((10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + (2 * baseHatchingFee))
    if generationHatchingFeeMultiplier * stor14[arg2].field_496 / stor14[arg2].field_496 != generationHatchingFeeMultiplier:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not generationHatchingFeeMultiplier * stor14[arg2].field_496:
        if baseHatchingFee < baseHatchingFee:
            revert with 0, 'SafeMath: addition overflow'
        require arg1 < stor14.length
        if block.number + 1 <= stor14[arg2].field_352:
            if not stor14[arg1].field_496:
                if baseHatchingFee < baseHatchingFee:
                    revert with 0, 'SafeMath: addition overflow'
                if not baseHatchingFee:
                    return 0
                if block.number + 1 <= stor14[arg1].field_352:
                    if stor14[arg1].field_416 * baseHatchingFee / baseHatchingFee != stor14[arg1].field_416:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not baseHatchingFee:
                        if stor14[arg1].field_416 * baseHatchingFee < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return (stor14[arg1].field_416 * baseHatchingFee)
                    if stor14[arg2].field_416 * baseHatchingFee / baseHatchingFee != stor14[arg2].field_416:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (stor14[arg1].field_416 * baseHatchingFee) + (stor14[arg2].field_416 * baseHatchingFee) < stor14[arg2].field_416 * baseHatchingFee:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((stor14[arg1].field_416 * baseHatchingFee) + (stor14[arg2].field_416 * baseHatchingFee))
                if baseHatchingFee / baseHatchingFee != 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not baseHatchingFee:
                    if baseHatchingFee < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return baseHatchingFee
                if stor14[arg2].field_416 * baseHatchingFee / baseHatchingFee != stor14[arg2].field_416:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if baseHatchingFee + (stor14[arg2].field_416 * baseHatchingFee) < stor14[arg2].field_416 * baseHatchingFee:
                    revert with 0, 'SafeMath: addition overflow'
                return (baseHatchingFee + (stor14[arg2].field_416 * baseHatchingFee))
            if generationHatchingFeeMultiplier * stor14[arg1].field_496 / stor14[arg1].field_496 != generationHatchingFeeMultiplier:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not generationHatchingFeeMultiplier * stor14[arg1].field_496:
                if baseHatchingFee < baseHatchingFee:
                    revert with 0, 'SafeMath: addition overflow'
                if not baseHatchingFee:
                    return 0
                if block.number + 1 <= stor14[arg1].field_352:
                    if stor14[arg1].field_416 * baseHatchingFee / baseHatchingFee != stor14[arg1].field_416:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not baseHatchingFee:
                        if stor14[arg1].field_416 * baseHatchingFee < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return (stor14[arg1].field_416 * baseHatchingFee)
                    if stor14[arg2].field_416 * baseHatchingFee / baseHatchingFee != stor14[arg2].field_416:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (stor14[arg1].field_416 * baseHatchingFee) + (stor14[arg2].field_416 * baseHatchingFee) < stor14[arg2].field_416 * baseHatchingFee:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((stor14[arg1].field_416 * baseHatchingFee) + (stor14[arg2].field_416 * baseHatchingFee))
                if baseHatchingFee / baseHatchingFee != 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not baseHatchingFee:
                    if baseHatchingFee < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return baseHatchingFee
                if stor14[arg2].field_416 * baseHatchingFee / baseHatchingFee != stor14[arg2].field_416:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if baseHatchingFee + (stor14[arg2].field_416 * baseHatchingFee) < stor14[arg2].field_416 * baseHatchingFee:
                    revert with 0, 'SafeMath: addition overflow'
                return (baseHatchingFee + (stor14[arg2].field_416 * baseHatchingFee))
            if 10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 / generationHatchingFeeMultiplier * stor14[arg1].field_496 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee < baseHatchingFee:
                revert with 0, 'SafeMath: addition overflow'
            if not (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee:
                if not baseHatchingFee:
                    return 0
                if stor14[arg2].field_416 * baseHatchingFee / baseHatchingFee != stor14[arg2].field_416:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if stor14[arg2].field_416 * baseHatchingFee < stor14[arg2].field_416 * baseHatchingFee:
                    revert with 0, 'SafeMath: addition overflow'
                return (stor14[arg2].field_416 * baseHatchingFee)
            if block.number + 1 <= stor14[arg1].field_352:
                if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 * stor14[arg1].field_416) + (baseHatchingFee * stor14[arg1].field_416) / (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee != stor14[arg1].field_416:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not baseHatchingFee:
                    if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 * stor14[arg1].field_416) + (baseHatchingFee * stor14[arg1].field_416) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 * stor14[arg1].field_416) + (baseHatchingFee * stor14[arg1].field_416))
                if stor14[arg2].field_416 * baseHatchingFee / baseHatchingFee != stor14[arg2].field_416:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 * stor14[arg1].field_416) + (baseHatchingFee * stor14[arg1].field_416) + (stor14[arg2].field_416 * baseHatchingFee) < stor14[arg2].field_416 * baseHatchingFee:
                    revert with 0, 'SafeMath: addition overflow'
                return ((10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 * stor14[arg1].field_416) + (baseHatchingFee * stor14[arg1].field_416) + (stor14[arg2].field_416 * baseHatchingFee))
            if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee / (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not baseHatchingFee:
                if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ((10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee)
            if stor14[arg2].field_416 * baseHatchingFee / baseHatchingFee != stor14[arg2].field_416:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee + (stor14[arg2].field_416 * baseHatchingFee) < stor14[arg2].field_416 * baseHatchingFee:
                revert with 0, 'SafeMath: addition overflow'
            return ((10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee + (stor14[arg2].field_416 * baseHatchingFee))
        if not stor14[arg1].field_496:
            if baseHatchingFee < baseHatchingFee:
                revert with 0, 'SafeMath: addition overflow'
            if not baseHatchingFee:
                return 0
            if block.number + 1 <= stor14[arg1].field_352:
                if stor14[arg1].field_416 * baseHatchingFee / baseHatchingFee != stor14[arg1].field_416:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not baseHatchingFee:
                    if stor14[arg1].field_416 * baseHatchingFee < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return (stor14[arg1].field_416 * baseHatchingFee)
                if baseHatchingFee / baseHatchingFee != 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (stor14[arg1].field_416 * baseHatchingFee) + baseHatchingFee < baseHatchingFee:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor14[arg1].field_416 * baseHatchingFee) + baseHatchingFee)
            if baseHatchingFee / baseHatchingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not baseHatchingFee:
                if baseHatchingFee < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return baseHatchingFee
            if baseHatchingFee / baseHatchingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 2 * baseHatchingFee < baseHatchingFee:
                revert with 0, 'SafeMath: addition overflow'
            return (2 * baseHatchingFee)
        if generationHatchingFeeMultiplier * stor14[arg1].field_496 / stor14[arg1].field_496 != generationHatchingFeeMultiplier:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not generationHatchingFeeMultiplier * stor14[arg1].field_496:
            if baseHatchingFee < baseHatchingFee:
                revert with 0, 'SafeMath: addition overflow'
            if not baseHatchingFee:
                return 0
            if block.number + 1 <= stor14[arg1].field_352:
                if stor14[arg1].field_416 * baseHatchingFee / baseHatchingFee != stor14[arg1].field_416:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not baseHatchingFee:
                    if stor14[arg1].field_416 * baseHatchingFee < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return (stor14[arg1].field_416 * baseHatchingFee)
                if baseHatchingFee / baseHatchingFee != 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (stor14[arg1].field_416 * baseHatchingFee) + baseHatchingFee < baseHatchingFee:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor14[arg1].field_416 * baseHatchingFee) + baseHatchingFee)
            if baseHatchingFee / baseHatchingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not baseHatchingFee:
                if baseHatchingFee < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return baseHatchingFee
            if baseHatchingFee / baseHatchingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 2 * baseHatchingFee < baseHatchingFee:
                revert with 0, 'SafeMath: addition overflow'
            return (2 * baseHatchingFee)
        if 10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 / generationHatchingFeeMultiplier * stor14[arg1].field_496 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee < baseHatchingFee:
            revert with 0, 'SafeMath: addition overflow'
        if not (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee:
            if not baseHatchingFee:
                return 0
            if baseHatchingFee / baseHatchingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if baseHatchingFee < baseHatchingFee:
                revert with 0, 'SafeMath: addition overflow'
            return baseHatchingFee
        if block.number + 1 <= stor14[arg1].field_352:
            if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 * stor14[arg1].field_416) + (baseHatchingFee * stor14[arg1].field_416) / (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee != stor14[arg1].field_416:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not baseHatchingFee:
                if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 * stor14[arg1].field_416) + (baseHatchingFee * stor14[arg1].field_416) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ((10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 * stor14[arg1].field_416) + (baseHatchingFee * stor14[arg1].field_416))
            if baseHatchingFee / baseHatchingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 * stor14[arg1].field_416) + (baseHatchingFee * stor14[arg1].field_416) + baseHatchingFee < baseHatchingFee:
                revert with 0, 'SafeMath: addition overflow'
            return ((10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 * stor14[arg1].field_416) + (baseHatchingFee * stor14[arg1].field_416) + baseHatchingFee)
        if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee / (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not baseHatchingFee:
            if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee)
        if baseHatchingFee / baseHatchingFee != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + (2 * baseHatchingFee) < baseHatchingFee:
            revert with 0, 'SafeMath: addition overflow'
        return ((10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + (2 * baseHatchingFee))
    if 10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496 / generationHatchingFeeMultiplier * stor14[arg2].field_496 != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee < baseHatchingFee:
        revert with 0, 'SafeMath: addition overflow'
    require arg1 < stor14.length
    if block.number + 1 <= stor14[arg2].field_352:
        if not stor14[arg1].field_496:
            if baseHatchingFee < baseHatchingFee:
                revert with 0, 'SafeMath: addition overflow'
            if not baseHatchingFee:
                if not (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee:
                    return 0
                if (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496 * stor14[arg2].field_416) + (baseHatchingFee * stor14[arg2].field_416) / (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee != stor14[arg2].field_416:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return ((10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496 * stor14[arg2].field_416) + (baseHatchingFee * stor14[arg2].field_416))
            if block.number + 1 <= stor14[arg1].field_352:
                if stor14[arg1].field_416 * baseHatchingFee / baseHatchingFee != stor14[arg1].field_416:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee:
                    if stor14[arg1].field_416 * baseHatchingFee < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return (stor14[arg1].field_416 * baseHatchingFee)
                if (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496 * stor14[arg2].field_416) + (baseHatchingFee * stor14[arg2].field_416) / (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee != stor14[arg2].field_416:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if stor14[arg1].field_416 * baseHatchingFee < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor14[arg1].field_416 * baseHatchingFee) + (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496 * stor14[arg2].field_416) + (baseHatchingFee * stor14[arg2].field_416))
            if baseHatchingFee / baseHatchingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee:
                if baseHatchingFee < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return baseHatchingFee
            if (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496 * stor14[arg2].field_416) + (baseHatchingFee * stor14[arg2].field_416) / (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee != stor14[arg2].field_416:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if baseHatchingFee < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (baseHatchingFee + (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496 * stor14[arg2].field_416) + (baseHatchingFee * stor14[arg2].field_416))
        if generationHatchingFeeMultiplier * stor14[arg1].field_496 / stor14[arg1].field_496 != generationHatchingFeeMultiplier:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not generationHatchingFeeMultiplier * stor14[arg1].field_496:
            if baseHatchingFee < baseHatchingFee:
                revert with 0, 'SafeMath: addition overflow'
            if not baseHatchingFee:
                if not (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee:
                    return 0
                if (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496 * stor14[arg2].field_416) + (baseHatchingFee * stor14[arg2].field_416) / (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee != stor14[arg2].field_416:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return ((10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496 * stor14[arg2].field_416) + (baseHatchingFee * stor14[arg2].field_416))
            if block.number + 1 <= stor14[arg1].field_352:
                if stor14[arg1].field_416 * baseHatchingFee / baseHatchingFee != stor14[arg1].field_416:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee:
                    if stor14[arg1].field_416 * baseHatchingFee < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return (stor14[arg1].field_416 * baseHatchingFee)
                if (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496 * stor14[arg2].field_416) + (baseHatchingFee * stor14[arg2].field_416) / (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee != stor14[arg2].field_416:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if stor14[arg1].field_416 * baseHatchingFee < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor14[arg1].field_416 * baseHatchingFee) + (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496 * stor14[arg2].field_416) + (baseHatchingFee * stor14[arg2].field_416))
            if baseHatchingFee / baseHatchingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee:
                if baseHatchingFee < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return baseHatchingFee
            if (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496 * stor14[arg2].field_416) + (baseHatchingFee * stor14[arg2].field_416) / (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee != stor14[arg2].field_416:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if baseHatchingFee < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (baseHatchingFee + (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496 * stor14[arg2].field_416) + (baseHatchingFee * stor14[arg2].field_416))
        if 10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 / generationHatchingFeeMultiplier * stor14[arg1].field_496 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee < baseHatchingFee:
            revert with 0, 'SafeMath: addition overflow'
        if not (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee:
            if not (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee:
                return 0
            if (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496 * stor14[arg2].field_416) + (baseHatchingFee * stor14[arg2].field_416) / (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee != stor14[arg2].field_416:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496 * stor14[arg2].field_416) + (baseHatchingFee * stor14[arg2].field_416))
        if block.number + 1 <= stor14[arg1].field_352:
            if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 * stor14[arg1].field_416) + (baseHatchingFee * stor14[arg1].field_416) / (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee != stor14[arg1].field_416:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee:
                if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 * stor14[arg1].field_416) + (baseHatchingFee * stor14[arg1].field_416) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ((10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 * stor14[arg1].field_416) + (baseHatchingFee * stor14[arg1].field_416))
            if (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496 * stor14[arg2].field_416) + (baseHatchingFee * stor14[arg2].field_416) / (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee != stor14[arg2].field_416:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 * stor14[arg1].field_416) + (baseHatchingFee * stor14[arg1].field_416) < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 * stor14[arg1].field_416) + (baseHatchingFee * stor14[arg1].field_416) + (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496 * stor14[arg2].field_416) + (baseHatchingFee * stor14[arg2].field_416))
        if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee / (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee:
            if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee)
        if (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496 * stor14[arg2].field_416) + (baseHatchingFee * stor14[arg2].field_416) / (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee != stor14[arg2].field_416:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee + (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496 * stor14[arg2].field_416) + (baseHatchingFee * stor14[arg2].field_416))
    if not stor14[arg1].field_496:
        if baseHatchingFee < baseHatchingFee:
            revert with 0, 'SafeMath: addition overflow'
        if not baseHatchingFee:
            if not (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee:
                return 0
            if (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee / (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee)
        if block.number + 1 <= stor14[arg1].field_352:
            if stor14[arg1].field_416 * baseHatchingFee / baseHatchingFee != stor14[arg1].field_416:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee:
                if stor14[arg1].field_416 * baseHatchingFee < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (stor14[arg1].field_416 * baseHatchingFee)
            if (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee / (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if stor14[arg1].field_416 * baseHatchingFee < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((stor14[arg1].field_416 * baseHatchingFee) + (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee)
        if baseHatchingFee / baseHatchingFee != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee:
            if baseHatchingFee < 0:
                revert with 0, 'SafeMath: addition overflow'
            return baseHatchingFee
        if (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee / (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 2 * baseHatchingFee < baseHatchingFee:
            revert with 0, 'SafeMath: addition overflow'
        return ((2 * baseHatchingFee) + (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496))
    if generationHatchingFeeMultiplier * stor14[arg1].field_496 / stor14[arg1].field_496 != generationHatchingFeeMultiplier:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not generationHatchingFeeMultiplier * stor14[arg1].field_496:
        if baseHatchingFee < baseHatchingFee:
            revert with 0, 'SafeMath: addition overflow'
        if not baseHatchingFee:
            if not (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee:
                return 0
            if (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee / (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee)
        if block.number + 1 <= stor14[arg1].field_352:
            if stor14[arg1].field_416 * baseHatchingFee / baseHatchingFee != stor14[arg1].field_416:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee:
                if stor14[arg1].field_416 * baseHatchingFee < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (stor14[arg1].field_416 * baseHatchingFee)
            if (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee / (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if stor14[arg1].field_416 * baseHatchingFee < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((stor14[arg1].field_416 * baseHatchingFee) + (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee)
        if baseHatchingFee / baseHatchingFee != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee:
            if baseHatchingFee < 0:
                revert with 0, 'SafeMath: addition overflow'
            return baseHatchingFee
        if (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee / (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 2 * baseHatchingFee < baseHatchingFee:
            revert with 0, 'SafeMath: addition overflow'
        return ((2 * baseHatchingFee) + (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496))
    if 10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 / generationHatchingFeeMultiplier * stor14[arg1].field_496 != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee < baseHatchingFee:
        revert with 0, 'SafeMath: addition overflow'
    if not (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee:
        if not (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee:
            return 0
        if (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee / (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return ((10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee)
    if block.number + 1 <= stor14[arg1].field_352:
        if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 * stor14[arg1].field_416) + (baseHatchingFee * stor14[arg1].field_416) / (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee != stor14[arg1].field_416:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee:
            if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 * stor14[arg1].field_416) + (baseHatchingFee * stor14[arg1].field_416) < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 * stor14[arg1].field_416) + (baseHatchingFee * stor14[arg1].field_416))
        if (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee / (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 * stor14[arg1].field_416) + (baseHatchingFee * stor14[arg1].field_416) < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496 * stor14[arg1].field_416) + (baseHatchingFee * stor14[arg1].field_416) + (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee)
    if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee / (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee:
        if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + baseHatchingFee)
    if (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee / (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496) + baseHatchingFee != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + (2 * baseHatchingFee) < baseHatchingFee:
        revert with 0, 'SafeMath: addition overflow'
    return ((10^18 * generationHatchingFeeMultiplier * stor14[arg1].field_496) + (2 * baseHatchingFee) + (10^18 * generationHatchingFeeMultiplier * stor14[arg2].field_496))
}



}
