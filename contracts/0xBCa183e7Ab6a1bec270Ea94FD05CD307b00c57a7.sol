contract main {




// =====================  Runtime code  =====================


#
#  - sub_f73b86a6(?)
#
mapping of uint128 filledAmounts;
array of address stor1;
array of struct liabilities;
array of struct stor3;
mapping of uint8 assetRisks;
uint8 stakeRisk;
uint8 liquidationPremium; offset 8
uint64 stor5;
uint64 priceOverdue; offset 16
uint64 positionOverdue; offset 80
address stor6;
address stor7;
bool stor8; offset 256
uint8 stor8; offset 160
uint8 stor8; offset 168
uint128 stor8; offset 168
address stor8;
address owner;
mapping of uint64 lockedStakeBalance;
address sub_cd118f80Address;
address WETHAddress;
mapping of struct atomicSwaps;
mapping of uint8 stor164;
uint256 stor64E8;

function priceOverdue() {
    return priceOverdue
}

function positionOverdue() {
    return positionOverdue
}

function filledAmounts(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return Mask(192, 0, filledAmounts[arg1])
}

function getLockedStakeBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint64(lockedStakeBalance[address(arg1)])
}

function assetRisks(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return assetRisks[arg1]
}

function owner() {
    return owner
}

function atomicSwaps(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return atomicSwaps[arg1].field_0, 
           uint64(atomicSwaps[arg1].field_0),
           bool(uint8(atomicSwaps[arg1].field_224)),
           atomicSwaps[arg1].field_256,
           uint64(atomicSwaps[arg1].field_416),
           atomicSwaps[arg1].field_256 % 16777216
}

function WETH() {
    return WETHAddress
}

function sub_cd118f80(?) {
    return sub_cd118f80Address
}

function stakeRisk() {
    return stakeRisk
}

function liquidationPremium() {
    return liquidationPremium
}

function sub_ef74e594(?) {
    require calldata.size - 4 >= 32
    return bool(stor164[arg1])
}

function liabilities(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < uint256(liabilities[arg1].field_0)
    return liabilities[arg1][arg2].field_0, 
           uint64(liabilities[arg1][arg2].field_0),
           Mask(192, 0, liabilities[arg1][arg2].field_256)
}

function _fallback() {
    revert with 0, 'E6'
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getBalance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return ('signextend', 23, ('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor1', 1)))))))
}

function requestReleaseStake() {
    Mask(192, 0, stor1[address(msg.sender)][stor6]) = Mask(192, 0, ('signextend', 23, ('add', ('signextend', 23, ('type', 256, ('stor', ('map', ('stor', ('name', 'stor6', 6)), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)))))), ('type', 64, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'lockedStakeBalance', 159)))))))
    Mask(72, 0, lockedStakeBalance[address(msg.sender)]) = 0
}

function refundAtomic(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(0xc37a3d333cf4cd795d76bf90e4337a6e68702cd2)
    delegate 0xc37a3d333cf4cd795d76bf90e4337a6e68702cd2.0x2f7f8595 with:
         gas gas_remaining wei
        args 0, uint32(arg1), 163, 1, 2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit AtomicRefunded(stor[delegate.return_data[0]], address(stor1[delegate.return_data[0]]), arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function partiallyLiquidate(address arg1, address arg2, uint112 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == Mask(112, 0, arg3)
    require ext_code.size(0x2f3b025bf2d57c47249c107603a6b6fab0b0e65a)
    delegate 0x2f3b025bf2d57c47249c107603a6b6fab0b0e65a.0xf96d18e1 with:
         gas gas_remaining wei
        args 3, 2, 1, 4, address(arg1), stor7, stor6, stor5, stor5, stakeRisk, stakeRisk, address(arg2), Mask(112, 0, arg3)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function lockStake(uint64 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ('signextend', 23, ('signextend', 23, ('type', 256, ('stor', ('map', ('stor', ('name', 'stor6', 6)), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))))))) <= arg1:
        revert with 0, 'E1S'
    Mask(192, 0, stor1[address(msg.sender)][stor6]) = Mask(192, 0, ('signextend', 23, ('add', ('signextend', 23, ('type', 256, ('stor', ('map', ('stor', ('name', 'stor6', 6)), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)))))), ('mul', -1, ('param', 'arg1')))))
    uint64(lockedStakeBalance[address(msg.sender)]) = uint64(arg1 + uint64(lockedStakeBalance[address(msg.sender)]))
}

function setBasicParams(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor6 = arg1
    stor7 = arg2
    address(stor8.field_0) = arg3
    sub_cd118f80Address = arg4
    require ext_code.size(arg4)
    staticcall arg4.getWETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    WETHAddress = ext_call.return_data[12 len 20]
}

function calcPosition(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x2f3b025bf2d57c47249c107603a6b6fab0b0e65a)
    delegate 0x2f3b025bf2d57c47249c107603a6b6fab0b0e65a.0xf127baa1 with:
         gas gas_remaining wei
        args 3, 2, 1, 4, address(arg1), stor7, stor6, stor5, stor5, stakeRisk, liquidationPremium
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require bool(ceil32(return_data.size) + 1024 <= test266151307())
    require delegate.return_data[0] < 5
    require delegate.return_data[0] < 5
    return delegate.return_data[0], delegate.return_data[32], delegate.return_data[64], delegate.return_data[96]
}

function checkPosition(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint256(liabilities[address(arg1)].field_0):
        return 1
    require ext_code.size(0x2f3b025bf2d57c47249c107603a6b6fab0b0e65a)
    delegate 0x2f3b025bf2d57c47249c107603a6b6fab0b0e65a.0xf127baa1 with:
         gas gas_remaining wei
        args 3, 2, 1, 4, address(arg1), stor7, stor6, stor5, stor5, stakeRisk, liquidationPremium
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require bool(ceil32(return_data.size) + 1024 <= test266151307())
    require delegate.return_data[0] < 5
    require delegate.return_data[0] <= 4
    return not delegate.return_data[0]
}

function updateAssetRisks(address[] arg1, uint8[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require cd[((32 * idx) + arg2 + 36)] == uint8(cd[((32 * idx) + arg2 + 36)])
        require idx < arg1.length
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 4
        assetRisks[address(cd[((32 * idx) + arg1 + 36)])] = uint8(cd[((32 * idx) + arg2 + 36)])
        idx = idx + 1
        continue 
}

function getCollateralAssets() {
    mem[64] = (32 * stor3.length) + 128
    mem[96] = stor3.length
    if not stor3.length:
        mem[(32 * stor3.length) + 128] = 32
        mem[(32 * stor3.length) + 160] = stor3.length
        idx = 0
        s = (32 * stor3.length) + 192
        t = 128
        while idx < stor3.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor3.length) + 128
           len (96 * stor3.length) + 64
    mem[128] = address(stor3.field_0)
    idx = 128
    s = 0
    while (32 * stor3.length) + 96 > idx:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor3.length) + 128] = 32
    mem[(32 * stor3.length) + 160] = stor3.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor3.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor3.length) + -mem[64] + 192
}

function getLiabilities(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 2
    mem[64] = (32 * uint256(liabilities[address(arg1)].field_0)) + 128
    mem[96] = uint256(liabilities[address(arg1)].field_0)
    s = 128
    idx = 0
    while idx < uint256(liabilities[address(arg1)].field_0):
        mem[0] = sha3(address(arg1), 2)
        _13 = mem[64]
        mem[64] = mem[64] + 96
        mem[_13] = liabilities[address(arg1)][idx].field_0
        mem[_13 + 32] = uint64(liabilities[address(arg1)][idx].field_160)
        mem[_13 + 64] = Mask(192, 0, liabilities[address(arg1)][idx].field_256)
        mem[s] = _13
        s = s + 32
        idx = idx + 1
        continue 
    _14 = mem[64]
    mem[mem[64]] = 32
    _15 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _15:
        _21 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_21 + 56 len 8]
        mem[t + 64] = mem[_21 + 72 len 24]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _14 + (96 * _15) + -mem[64] + 64
}

function updateMarginalSettings(address[] arg1, uint8 arg2, uint8 arg3, uint64 arg4, uint64 arg5) {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor3.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor3.length > idx:
            uint256(stor3[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg1 + 36
        while arg1 + (32 * arg1.length) + 36 > idx:
            stor3[s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor3.length > idx:
            uint256(stor3[idx].field_0) = 0
            idx = idx + 1
            continue 
    stakeRisk = arg2
    liquidationPremium = arg3
    priceOverdue = arg4
    positionOverdue = arg5
}

function sub_62a3f4dd(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 356] = arg3.length
    mem[ceil32(arg2.length) + 388 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + arg3.length + 388] = 0
    require ext_code.size(0xc37a3d333cf4cd795d76bf90e4337a6e68702cd2)
    delegate 0xc37a3d333cf4cd795d76bf90e4337a6e68702cd2.0x21963ec1 with:
         gas gas_remaining wei
        args 0, 0, 224, ceil32(arg2.length) + 256, address(stor8.field_0), 163, 1, 2, arg2.length, arg2[all], 0, mem[arg2.length + 388 len ceil32(arg2.length) + ceil32(arg3.length) - arg2.length]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit AtomicClaimed(address(arg1), address(stor1[delegate.return_data[0]]), Array(len=arg2.length, data=arg2[all]));
}

function sub_6c3175bb(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == uint64(arg2)
    require arg3 == address(arg3)
    require arg4 == uint64(arg4)
    require arg5 == arg5 % 16777216
    require ext_code.size(0xc37a3d333cf4cd795d76bf90e4337a6e68702cd2)
    delegate 0xc37a3d333cf4cd795d76bf90e4337a6e68702cd2.0x4d8a4a16 with:
         gas gas_remaining wei
        args address(arg1), arg2 << 192, address(arg3), arg4 << 192, arg5 << 232, arg6, 163, 1, 2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    if uint256(liabilities[address(arg1)].field_0):
        require ext_code.size(0x2f3b025bf2d57c47249c107603a6b6fab0b0e65a)
        delegate 0x2f3b025bf2d57c47249c107603a6b6fab0b0e65a.0xf127baa1 with:
             gas gas_remaining wei
            args 3, 2, 1, 4, address(arg1), stor7, stor6, stor5, stor5, stakeRisk, liquidationPremium
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require bool(ceil32(return_data.size) + 1216 <= test266151307())
        require delegate.return_data[0] < 5
        require delegate.return_data[0] <= 4
        if delegate.return_data[0]:
            revert with 0, 'E1PA'
    emit AtomicLocked(address(arg1), address(arg3), arg6);
}

function getBalances(address[] arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg2 == arg2
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + 128] = arg1.length
    mem[64] = (64 * arg1.length) + 160
    if arg1.length:
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(address(arg2), 1)
        require idx < arg1.length
        mem[(32 * idx) + (32 * arg1.length) + 160] = ('signextend', 23, ('signextend', 23, ('signextend', 23, ('type', 256, ('stor', ('map', ('mem', ('range', ('add', 140, ('mul', 32, ('var', 0))), 20)), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor1', 1))))))))
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + 160] = 32
    mem[(64 * arg1.length) + 192] = arg1.length
    idx = 0
    s = mem[64] + 64
    t = (32 * arg1.length) + 160
    while idx < arg1.length:
        mem[s] = ('signextend', 23, ('mem', ('range', ('var', 2), 32)))
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (98 * arg1.length) + -mem[64] + 224
}

function sub_4478b092(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require calldata.size + -cd[36] - 4 >= 416
    require ('cd', 36).length == address(('cd', 36).length)
    require ('cd', 36)[0] == address(('cd', 36)[0])
    require ('cd', 36)[1] == address(('cd', 36)[1])
    require ('cd', 36)[2] == address(('cd', 36)[2])
    require ('cd', 36)[3] == address(('cd', 36)[3])
    require ('cd', 36)[4] == uint64(('cd', 36)[4])
    require ('cd', 36)[5] == uint64(('cd', 36)[5])
    require ('cd', 36)[6] == uint64(('cd', 36)[6])
    require ('cd', 36)[7] == uint64(('cd', 36)[7])
    require ('cd', 36)[8] == uint64(('cd', 36)[8])
    require ('cd', 36)[9] == uint8(('cd', 36)[9])
    require ('cd', 36)[10] == bool(('cd', 36)[10])
    require ('cd', 36)[11] <= test266151307()
    require cd[36] + ('cd', 36)[11] + 35 < calldata.size
    require cd[(cd[36] + ('cd', 36)[11] + 4)] <= test266151307()
    require ceil32(cd[(cd[36] + ('cd', 36)[11] + 4)]) + 544 >= 512 and ceil32(cd[(cd[36] + ('cd', 36)[11] + 4)]) + 544 <= test266151307()
    require cd[36] + ('cd', 36)[11] + cd[(cd[36] + ('cd', 36)[11] + 4)] + 36 <= calldata.size
    require uint64(('cd', 36)[4])
    mem[ceil32(cd[(cd[36] + ('cd', 36)[11] + 4)]) + 544] = ('signextend', 23, ('type', 192, ('stor', ('map', ('cd', 4), ('name', 'filledAmounts', 0)))))
    mem[ceil32(cd[(cd[36] + ('cd', 36)[11] + 4)]) + 576] = ('signextend', 23, ('div', ('mul', ('mask_shl', 64, 0, 0, ('cd', ('add', 228, ('cd', 36)))), ('type', 112, ('stor', ('map', ('cd', 4), ('name', 'filledAmounts', 0))))), ('mask_shl', 64, 0, 0, ('cd', ('add', 164, ('cd', 36))))))
    return Mask(8 * -ceil32(cd[(cd[36] + ('cd', 36)[11] + 4)]) + cd[(cd[36] + ('cd', 36)[11] + 4)] + 32, 0, 0), 
           mem[cd[(cd[36] + ('cd', 36)[11] + 4)] + 576 len -cd[(cd[36] + ('cd', 36)[11] + 4)] + ceil32(cd[(cd[36] + ('cd', 36)[11] + 4)]) + 32]
}

function sub_df0040c8(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == Mask(112, 0, cd[4])
    require cd[36] == Mask(112, 0, cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] == bool(cd[100])
    if stor64E8:
        revert with 0, 'NCY_REENTRANT_CALL'
    stor64E8 = 1
    idx = 0
    s = cd[68] + 36
    t = 420
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x15eacf754585ef47b55edc8e1abaf1cbae0c7c35)
    delegate 0x15eacf754585ef47b55edc8e1abaf1cbae0c7c35.0xa6ecf2db with:
         gas gas_remaining wei
        args cd[4] << 144, cd[36] << 144, Array(len=('cd', 68).length, data=mem[420 len 32 * ('cd', 68).length]), bool(cd[100]), 1, 2, sub_cd118f80Address
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == bool(delegate.return_data[0])
    if delegate.return_data[0]:
        if uint256(liabilities[address(msg.sender)].field_0):
            require ext_code.size(0x2f3b025bf2d57c47249c107603a6b6fab0b0e65a)
            delegate 0x2f3b025bf2d57c47249c107603a6b6fab0b0e65a.0xf127baa1 with:
                 gas gas_remaining wei
                args 3, 2, 1, 4, msg.sender, stor7, stor6, stor5, stor5, stakeRisk, liquidationPremium
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            require bool((2 * ceil32(return_data.size)) + 1088 <= test266151307())
            require delegate.return_data[0] < 5
            require delegate.return_data[0] <= 4
            if delegate.return_data[0]:
                revert with 0, 'E1PS'
    stor64E8 = 0
}

function sub_de73525e(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 416
    require ('cd', 4).length == address(('cd', 4).length)
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[1] == address(('cd', 4)[1])
    require ('cd', 4)[2] == address(('cd', 4)[2])
    require ('cd', 4)[3] == address(('cd', 4)[3])
    require ('cd', 4)[4] == uint64(('cd', 4)[4])
    require ('cd', 4)[5] == uint64(('cd', 4)[5])
    require ('cd', 4)[6] == uint64(('cd', 4)[6])
    require ('cd', 4)[7] == uint64(('cd', 4)[7])
    require ('cd', 4)[8] == uint64(('cd', 4)[8])
    require ('cd', 4)[9] == uint8(('cd', 4)[9])
    require ('cd', 4)[10] == bool(('cd', 4)[10])
    require ('cd', 4)[11] <= test266151307()
    require cd[4] + ('cd', 4)[11] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[11] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 544 >= 512 and ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 544 <= test266151307()
    require cd[4] + ('cd', 4)[11] + cd[(cd[4] + ('cd', 4)[11] + 4)] + 36 <= calldata.size
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 576] = 'Order(address senderAddress,addr'
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 608] = 'ess matcherAddress,address baseA'
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 640] = 'sset,address quoteAsset,address '
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 672] = 'matcherFeeAsset,uint64 amount,ui'
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 704] = 'nt64 price,uint64 matcherFee,uin'
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 736] = 't64 nonce,uint64 expiration,uint'
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 768] = '8 buySide)' << 176
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 544] = 202
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 810] = sha3(mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 576 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 576 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])]])
    return sha3(mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 810], address(('cd', 4).length), address(('cd', 4)[0]), address(('cd', 4)[1]), address(('cd', 4)[2]), address(('cd', 4)[3]), ('cd', 4)[4] << 192, ('cd', 4)[5] << 192, ('cd', 4)[6] << 192, ('cd', 4)[7] << 192, ('cd', 4)[8] << 192, uint8(('cd', 4)[9]))
}

function sub_5b22dc99(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 416
    require ('cd', 4).length == address(('cd', 4).length)
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[1] == address(('cd', 4)[1])
    require ('cd', 4)[2] == address(('cd', 4)[2])
    require ('cd', 4)[3] == address(('cd', 4)[3])
    require ('cd', 4)[4] == uint64(('cd', 4)[4])
    require ('cd', 4)[5] == uint64(('cd', 4)[5])
    require ('cd', 4)[6] == uint64(('cd', 4)[6])
    require ('cd', 4)[7] == uint64(('cd', 4)[7])
    require ('cd', 4)[8] == uint64(('cd', 4)[8])
    require ('cd', 4)[9] == uint8(('cd', 4)[9])
    require ('cd', 4)[10] == bool(('cd', 4)[10])
    require ('cd', 4)[11] <= test266151307()
    require cd[4] + ('cd', 4)[11] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[11] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 544 >= 512 and ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 544 <= test266151307()
    require cd[4] + ('cd', 4)[11] + cd[(cd[4] + ('cd', 4)[11] + 4)] + 36 <= calldata.size
    mem[544 len cd[(cd[4] + ('cd', 4)[11] + 4)]] = call.data[cd[4] + ('cd', 4)[11] + 36 len cd[(cd[4] + ('cd', 4)[11] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 544] = 0
    if ('cd', 4)[10]:
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 544] = 0x1b9c0d4a00000000000000000000000000000000000000000000000000000000
    else:
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 544] = 0xe7e652ed00000000000000000000000000000000000000000000000000000000
    require ext_code.size(0x851de93083bd2a32e43d2c09b3842f4a0588b634)
    delegate 0x851de93083bd2a32e43d2c09b3842f4a0588b634.0x0 with:
         gas gas_remaining wei
        args 32, address(('cd', 4).length), address(('cd', 4)[0]), address(('cd', 4)[1]), address(('cd', 4)[2]), address(('cd', 4)[3]), ('cd', 4)[4] << 192, ('cd', 4)[5] << 192, ('cd', 4)[6] << 192, ('cd', 4)[7] << 192, ('cd', 4)[8] << 192, ('cd', 4)[9] << 248, bool(('cd', 4)[10]), 416, cd[(cd[4] + ('cd', 4)[11] + 4)], call.data[cd[4] + ('cd', 4)[11] + 36 len cd[(cd[4] + ('cd', 4)[11] + 4)]], mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 544 len ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) - cd[(cd[4] + ('cd', 4)[11] + 4)]]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, delegate.return_data[4 len 28] == bool(0, delegate.return_data[4 len 28])
    return bool(0, delegate.return_data[4 len 28])
}

function sub_18044e80(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 256
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    require ('cd', 4).length == address(('cd', 4).length)
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[1] == address(('cd', 4)[1])
    require ('cd', 4)[2] == address(('cd', 4)[2])
    require ('cd', 4)[3] == uint64(('cd', 4)[3])
    require ('cd', 4)[4] == uint64(('cd', 4)[4])
    require ('cd', 4)[6] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
    require cd[4] + 4 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + 548] = ('cd', 36).length
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + 580 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ('cd', 36).length + 580] = 0
    require ext_code.size(0xc37a3d333cf4cd795d76bf90e4337a6e68702cd2)
    delegate 0xc37a3d333cf4cd795d76bf90e4337a6e68702cd2.0x947caa4e with:
         gas gas_remaining wei
        args 0, 160, ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + 448, 164, 1, 2, address(('cd', 4).length), address(('cd', 4)[0]), address(('cd', 4)[1]), address(('cd', 4)[2]), ('cd', 4)[3] << 192, ('cd', 4)[4] << 192, ('cd', 4)[5], 256, cd[(cd[4] + ('cd', 4)[6] + 4)], call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]], 0, mem[cd[(cd[4] + ('cd', 4)[6] + 4)] + 580 len ceil32(cd[(cd[4] + ('cd', 4)[6] + 4)]) + ceil32(('cd', 36).length) - cd[(cd[4] + ('cd', 4)[6] + 4)]]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require ('cd', 4).length == address(('cd', 4).length)
    if uint256(liabilities[address(('cd', 4).length)].field_0):
        require ext_code.size(0x2f3b025bf2d57c47249c107603a6b6fab0b0e65a)
        delegate 0x2f3b025bf2d57c47249c107603a6b6fab0b0e65a.0xf127baa1 with:
             gas gas_remaining wei
            args 3, 2, 1, 4, address(('cd', 4).length), stor7, stor6, stor5, stor5, stakeRisk, liquidationPremium
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require bool(ceil32(return_data.size) + 1024 <= test266151307())
        require delegate.return_data[0] < 5
        require delegate.return_data[0] <= 4
        if delegate.return_data[0]:
            revert with 0, 'E1PA'
    require ('cd', 4).length == address(('cd', 4).length)
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[2] == address(('cd', 4)[2])
    emit AtomicRedeemed(address(('cd', 4).length), address(('cd', 4)[0]), address(('cd', 4)[2]), Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len ('cd', 36).length]));
}

function initialize() payable {
    if uint8(stor8.field_168):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address):
            if uint8(stor8.field_160):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor8.field_168):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            uint8(stor8.field_160) = 1
            uint8(stor8.field_168) = 1
            Mask(88, 0, stor8.field_168) = 0
            stor8.field_256 % 1 = 0
            if ext_code.size(this.address):
                if uint8(stor8.field_160):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor8.field_168):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                uint8(stor8.field_160) = 1
                uint8(stor8.field_168) = 1
                Mask(88, 0, stor8.field_168) = 0
                stor8.field_256 % 1 = 0
                if ext_code.size(this.address):
                    if uint8(stor8.field_160):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor8.field_168):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                else:
                    uint8(stor8.field_160) = 1
                    uint8(stor8.field_168) = 1
                    Mask(88, 0, stor8.field_168) = 0
                    stor8.field_256 % 1 = 0
                    uint8(stor8.field_168) = 0
                    if ext_code.size(this.address):
                        if uint8(stor8.field_160):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor8.field_168):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                    else:
                        uint8(stor8.field_160) = 1
                        uint8(stor8.field_168) = 1
                        Mask(88, 0, stor8.field_168) = 0
                        stor8.field_256 % 1 = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor8.field_168) = 0
                        uint8(stor8.field_168) = 0
                        uint8(stor8.field_168) = 0
}

function safeAutoTransferFrom(address arg1, address arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if sub_cd118f80Address != msg.sender:
        revert with 0, 'Only _orionpoolRouter allowed'
    if not arg1:
        if arg2 != this.address:
            revert with 0, 'TransferFrom: this'
        require ext_code.size(WETHAddress)
        call WETHAddress.0xd0e30db0 with:
           value arg4 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(WETHAddress)
        call WETHAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg3), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    if this.address == arg2:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg4) >> 32
        call arg1 with:
             gas gas_remaining wei
            args Mask(224, 32, arg4) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg4
            if not unknown_0xa9059cbb(?????), address(arg3) << 64:
                revert with 0, 32, 42, 0xcb5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0xcb5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
    else:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), address(arg2) << 64, 0, address(arg3), Mask(224, 32, arg4) >> 32
        mem[416 len 4] = 0
        mem[388 len 0] = 0
        call arg1 with:
             gas gas_remaining wei
            args Mask(224, 32, arg4) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), address(arg2) << 64, 0, address(arg3), arg4
            if not unknown_0x23b872dd(?????), address(arg2) << 64:
                revert with 0, 
                            32,
                            42,
                            0xcb5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0xcb5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
}

function deposit() payable {
    if not Mask(112, 0, msg.value):
        Mask(192, 0, stor1[address(msg.sender)][0]) = Mask(192, 0, ('signextend', 23, ('signextend', 23, ('type', 256, ('stor', ('map', 0, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))))))))
        if Mask(112, 0, msg.value):
            emit NewAssetTransaction(1, 0, uint64(block.timestamp), msg.sender, 0);
        if 0 > ('signextend', 23, ('signextend', 23, ('type', 256, ('stor', ('map', 0, ('map', 'msg.sender', ('name', 'stor1', 1))))))):
            if ('signextend', 23, ('signextend', 23, ('type', 256, ('stor', ('map', 0, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))))))) >= 0:
                idx = 0
                while idx < uint256(liabilities[address(msg.sender)].field_0):
                    mem[32] = 2
                    require idx < uint256(liabilities[address(msg.sender)].field_0)
                    mem[0] = sha3(address(msg.sender), 2)
                    if liabilities[address(msg.sender)][idx].field_0:
                        idx = idx + 1
                        continue 
                    if uint256(liabilities[address(msg.sender)].field_0) > 1:
                        require uint256(liabilities[address(msg.sender)].field_0) - 1 < uint256(liabilities[address(msg.sender)].field_0)
                        require idx < uint256(liabilities[address(msg.sender)].field_0)
                        liabilities[address(msg.sender)][idx].field_0 = liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_0
                        liabilities[address(msg.sender)][idx].field_0 = liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_0
                        Mask(96, 0, liabilities[address(msg.sender)][idx].field_160) = uint64(liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_160)
                        uint32(liabilities[address(msg.sender)][idx].field_224) = 0
                        Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) = Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256)
                    require uint256(liabilities[address(msg.sender)].field_0)
                    Mask(224, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_0) = 0
                    Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) = 0
                    uint256(liabilities[address(msg.sender)].field_0)--
            else:
                idx = 0
                while idx < uint256(liabilities[address(msg.sender)].field_0) - 1:
                    mem[32] = 2
                    require idx < uint256(liabilities[address(msg.sender)].field_0)
                    mem[0] = sha3(address(msg.sender), 2)
                    if liabilities[address(msg.sender)][idx].field_0:
                        idx = idx + 1
                        continue 
                    require idx < uint256(liabilities[address(msg.sender)].field_0)
                    if 0 >= Mask(192, 0, liabilities[address(msg.sender)][idx].field_256):
                        Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) = Mask(192, 0, -('signextend', 23, ('type', 256, ('stor', ('map', 0, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)))))))
                        uint64(liabilities[address(msg.sender)][idx].field_160) = uint64(block.timestamp)
                require uint256(liabilities[address(msg.sender)].field_0) - 1 < uint256(liabilities[address(msg.sender)].field_0)
                if 0 >= Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256):
                    Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) = Mask(192, 0, -('signextend', 23, ('type', 256, ('stor', ('map', 0, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)))))))
                    uint64(liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_160) = uint64(block.timestamp)
    else:
        if 100 * 10^6 * Mask(112, 0, msg.value) / Mask(112, 0, msg.value) != 100 * 10^6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 100 * 10^6 * Mask(112, 0, msg.value) / 10^18 >= 0x7fffffffffffffffffffffffffff:
            revert with 0, 'E3U'
        Mask(192, 0, stor1[address(msg.sender)][0]) = Mask(192, 0, ('signextend', 23, ('add', ('signextend', 13, ('div', ('mul', 100000000, ('mask_shl', 112, 0, 0, 'callvalue')), 1000000000000000000)), ('signextend', 23, ('type', 256, ('stor', ('map', 0, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)))))))))
        if Mask(112, 0, msg.value):
            emit NewAssetTransaction(1, 100 * 10^6 * Mask(112, 0, msg.value) / 10^18 << 144, uint64(block.timestamp), msg.sender, 0);
        if 0 > ('signextend', 23, ('signextend', 23, ('type', 256, ('stor', ('map', 0, ('map', 'msg.sender', ('name', 'stor1', 1))))))):
            if ('signextend', 23, ('signextend', 23, ('type', 256, ('stor', ('map', 0, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))))))) >= 0:
                idx = 0
                while idx < uint256(liabilities[address(msg.sender)].field_0):
                    mem[32] = 2
                    require idx < uint256(liabilities[address(msg.sender)].field_0)
                    mem[0] = sha3(address(msg.sender), 2)
                    if liabilities[address(msg.sender)][idx].field_0:
                        idx = idx + 1
                        continue 
                    if uint256(liabilities[address(msg.sender)].field_0) > 1:
                        require uint256(liabilities[address(msg.sender)].field_0) - 1 < uint256(liabilities[address(msg.sender)].field_0)
                        require idx < uint256(liabilities[address(msg.sender)].field_0)
                        liabilities[address(msg.sender)][idx].field_0 = liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_0
                        liabilities[address(msg.sender)][idx].field_0 = liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_0
                        Mask(96, 0, liabilities[address(msg.sender)][idx].field_160) = uint64(liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_160)
                        uint32(liabilities[address(msg.sender)][idx].field_224) = 0
                        Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) = Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256)
                    require uint256(liabilities[address(msg.sender)].field_0)
                    Mask(224, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_0) = 0
                    Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) = 0
                    uint256(liabilities[address(msg.sender)].field_0)--
            else:
                idx = 0
                while idx < uint256(liabilities[address(msg.sender)].field_0) - 1:
                    mem[32] = 2
                    require idx < uint256(liabilities[address(msg.sender)].field_0)
                    mem[0] = sha3(address(msg.sender), 2)
                    if liabilities[address(msg.sender)][idx].field_0:
                        idx = idx + 1
                        continue 
                    require idx < uint256(liabilities[address(msg.sender)].field_0)
                    if Mask(112, 0, 100 * 10^6 * Mask(112, 0, msg.value) / 10^18) < Mask(192, 0, liabilities[address(msg.sender)][idx].field_256):
                        Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) = Mask(192, 0, Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) - Mask(112, 0, 100 * 10^6 * Mask(112, 0, msg.value) / 10^18))
                    else:
                        Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) = Mask(192, 0, -('signextend', 23, ('type', 256, ('stor', ('map', 0, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)))))))
                        uint64(liabilities[address(msg.sender)][idx].field_160) = uint64(block.timestamp)
                require uint256(liabilities[address(msg.sender)].field_0) - 1 < uint256(liabilities[address(msg.sender)].field_0)
                if Mask(112, 0, 100 * 10^6 * Mask(112, 0, msg.value) / 10^18) < Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256):
                    Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) = Mask(192, 0, Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) - Mask(112, 0, 100 * 10^6 * Mask(112, 0, msg.value) / 10^18))
                else:
                    Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) = Mask(192, 0, -('signextend', 23, ('type', 256, ('stor', ('map', 0, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)))))))
                    uint64(liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_160) = uint64(block.timestamp)
}

function sub_4c36fc72(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 416
    require ('cd', 4).length == address(('cd', 4).length)
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[1] == address(('cd', 4)[1])
    require ('cd', 4)[2] == address(('cd', 4)[2])
    require ('cd', 4)[3] == address(('cd', 4)[3])
    require ('cd', 4)[4] == uint64(('cd', 4)[4])
    require ('cd', 4)[5] == uint64(('cd', 4)[5])
    require ('cd', 4)[6] == uint64(('cd', 4)[6])
    require ('cd', 4)[7] == uint64(('cd', 4)[7])
    require ('cd', 4)[8] == uint64(('cd', 4)[8])
    require ('cd', 4)[9] == uint8(('cd', 4)[9])
    require ('cd', 4)[10] == bool(('cd', 4)[10])
    require ('cd', 4)[11] <= test266151307()
    require cd[4] + ('cd', 4)[11] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[11] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 544 >= 512 and ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 544 <= test266151307()
    require cd[4] + ('cd', 4)[11] + cd[(cd[4] + ('cd', 4)[11] + 4)] + 36 <= calldata.size
    mem[544 len cd[(cd[4] + ('cd', 4)[11] + 4)]] = call.data[cd[4] + ('cd', 4)[11] + 36 len cd[(cd[4] + ('cd', 4)[11] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 544] = 0
    require cd[36] == Mask(112, 0, cd[36])
    require cd[68] == uint64(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 544] = 25
    if stor64E8:
        revert with 0, 'NCY_REENTRANT_CALL'
    else:
        stor64E8 = 1
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 896] = 0x2ddd0dd200000000000000000000000000000000000000000000000000000000
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 900] = 288
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 1188] = address(('cd', 4).length)
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 1220] = address(('cd', 4)[0])
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 1252] = address(('cd', 4)[1])
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 1284] = address(('cd', 4)[2])
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 1316] = address(('cd', 4)[3])
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 1348] = uint64(('cd', 4)[4])
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 1380] = uint64(('cd', 4)[5])
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 1412] = uint64(('cd', 4)[6])
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 1444] = uint64(('cd', 4)[7])
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 1476] = uint64(('cd', 4)[8])
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 1508] = uint8(('cd', 4)[9])
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 1540] = bool(('cd', 4)[10])
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 1572] = 416
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 1604] = cd[(cd[4] + ('cd', 4)[11] + 4)]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 1636 len ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])] = call.data[cd[4] + ('cd', 4)[11] + 36 len cd[(cd[4] + ('cd', 4)[11] + 4)]], mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 544 len ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) - cd[(cd[4] + ('cd', 4)[11] + 4)]]
        if ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) <= cd[(cd[4] + ('cd', 4)[11] + 4)]:
            mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 932] = Mask(112, 0, cd[36])
            mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 964] = uint64(cd[68])
            mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 996] = ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 736
            mem[(2 * ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])) + 1636] = ('cd', 100).length
            idx = 0
            s = cd[100] + 36
            t = (2 * ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])) + 1668
            while idx < ('cd', 100).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0x15eacf754585ef47b55edc8e1abaf1cbae0c7c35)
            delegate 0x15eacf754585ef47b55edc8e1abaf1cbae0c7c35.mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 896 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 900 len 128], address(stor8.field_0), 1, 2, sub_cd118f80Address, 0, mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 1188 len ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + (32 * ('cd', 100).length) + 480]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 288
                require bool(ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(return_data.size) + 1184 <= test266151307())
                require delegate.return_data[192] == bool(delegate.return_data[192])
                require delegate.return_data[224] == bool(delegate.return_data[224])
                require delegate.return_data[256] == delegate.return_data[268 len 20]
                if uint256(liabilities[address(('cd', 4).length)].field_0):
                    require ext_code.size(0x2f3b025bf2d57c47249c107603a6b6fab0b0e65a)
                    delegate 0x2f3b025bf2d57c47249c107603a6b6fab0b0e65a.0xf127baa1 with:
                         gas gas_remaining wei
                        args 3, 2, 1, 4, address(('cd', 4).length), stor7, stor6, stor5, stor5, stakeRisk, liquidationPremium
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 128
                        require bool(ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + (2 * ceil32(return_data.size)) + 2112 <= test266151307())
                        require delegate.return_data[0] < 5
                        require delegate.return_data[0] <= 4
                        if delegate.return_data[192]:
                            if not uint8(('cd', 4)[9]):
                                if delegate.return_data[0]:
                                    revert with 0, '', 0
                                else:
                                    emit NewTrade(address(('cd', 4)[1]), address(('cd', 4)[2]), delegate.return_data[64] << 192, delegate.return_data[0] << 64, Mask(192, 0, delegate.return_data[32]), address(('cd', 4).length), 1);
                                    stor64E8 = 0
                            else:
                                if delegate.return_data[0]:
                                    revert with 0, '', 0
                                else:
                                    emit NewTrade(address(('cd', 4)[1]), address(('cd', 4)[2]), delegate.return_data[64] << 192, delegate.return_data[0] << 64, Mask(192, 0, delegate.return_data[32]), address(('cd', 4).length), 1);
                                    stor64E8 = 0
                        else:
                            if delegate.return_data[0]:
                                revert with 0, '', 0
                            else:
                                emit NewTrade(address(('cd', 4)[1]), address(('cd', 4)[2]), delegate.return_data[64] << 192, delegate.return_data[0] << 64, Mask(192, 0, delegate.return_data[32]), address(('cd', 4).length), 1);
                                stor64E8 = 0
                else:
                    if delegate.return_data[192]:
                        if not uint8(('cd', 4)[9]):
                            emit NewTrade(address(('cd', 4)[1]), address(('cd', 4)[2]), delegate.return_data[64] << 192, delegate.return_data[0] << 64, Mask(192, 0, delegate.return_data[32]), address(('cd', 4).length), 1);
                            stor64E8 = 0
                        else:
                            emit NewTrade(address(('cd', 4)[1]), address(('cd', 4)[2]), delegate.return_data[64] << 192, delegate.return_data[0] << 64, Mask(192, 0, delegate.return_data[32]), address(('cd', 4).length), 1);
                            stor64E8 = 0
                    else:
                        emit NewTrade(address(('cd', 4)[1]), address(('cd', 4)[2]), delegate.return_data[64] << 192, delegate.return_data[0] << 64, Mask(192, 0, delegate.return_data[32]), address(('cd', 4).length), 1);
                        stor64E8 = 0
        else:
            mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 1636] = 0
            mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 932] = Mask(112, 0, cd[36])
            mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 964] = uint64(cd[68])
            mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 996] = ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 736
            mem[(2 * ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])) + 1636] = ('cd', 100).length
            idx = 0
            s = cd[100] + 36
            t = (2 * ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])) + 1668
            while idx < ('cd', 100).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0x15eacf754585ef47b55edc8e1abaf1cbae0c7c35)
            delegate 0x15eacf754585ef47b55edc8e1abaf1cbae0c7c35.mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 896 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 900 len 128], address(stor8.field_0), 1, 2, sub_cd118f80Address, 0, mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 1188 len ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + (32 * ('cd', 100).length) + 480]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 288
                require bool(ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(return_data.size) + 1184 <= test266151307())
                require delegate.return_data[192] == bool(delegate.return_data[192])
                require delegate.return_data[224] == bool(delegate.return_data[224])
                require delegate.return_data[256] == delegate.return_data[268 len 20]
                if uint256(liabilities[address(('cd', 4).length)].field_0):
                    require ext_code.size(0x2f3b025bf2d57c47249c107603a6b6fab0b0e65a)
                    delegate 0x2f3b025bf2d57c47249c107603a6b6fab0b0e65a.0xf127baa1 with:
                         gas gas_remaining wei
                        args 3, 2, 1, 4, address(('cd', 4).length), stor7, stor6, stor5, stor5, stakeRisk, liquidationPremium
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 128
                        require bool(ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + (2 * ceil32(return_data.size)) + 2112 <= test266151307())
                        require delegate.return_data[0] < 5
                        require delegate.return_data[0] <= 4
                        if delegate.return_data[192]:
                            if not uint8(('cd', 4)[9]):
                                if delegate.return_data[0]:
                                    revert with 0, '', 0
                                else:
                                    emit NewTrade(address(('cd', 4)[1]), address(('cd', 4)[2]), delegate.return_data[64] << 192, delegate.return_data[0] << 64, Mask(192, 0, delegate.return_data[32]), address(('cd', 4).length), 1);
                                    stor64E8 = 0
                            else:
                                if delegate.return_data[0]:
                                    revert with 0, '', 0
                                else:
                                    emit NewTrade(address(('cd', 4)[1]), address(('cd', 4)[2]), delegate.return_data[64] << 192, delegate.return_data[0] << 64, Mask(192, 0, delegate.return_data[32]), address(('cd', 4).length), 1);
                                    stor64E8 = 0
                        else:
                            if delegate.return_data[0]:
                                revert with 0, '', 0
                            else:
                                emit NewTrade(address(('cd', 4)[1]), address(('cd', 4)[2]), delegate.return_data[64] << 192, delegate.return_data[0] << 64, Mask(192, 0, delegate.return_data[32]), address(('cd', 4).length), 1);
                                stor64E8 = 0
                else:
                    if delegate.return_data[192]:
                        if not uint8(('cd', 4)[9]):
                            emit NewTrade(address(('cd', 4)[1]), address(('cd', 4)[2]), delegate.return_data[64] << 192, delegate.return_data[0] << 64, Mask(192, 0, delegate.return_data[32]), address(('cd', 4).length), 1);
                            stor64E8 = 0
                        else:
                            emit NewTrade(address(('cd', 4)[1]), address(('cd', 4)[2]), delegate.return_data[64] << 192, delegate.return_data[0] << 64, Mask(192, 0, delegate.return_data[32]), address(('cd', 4).length), 1);
                            stor64E8 = 0
                    else:
                        emit NewTrade(address(('cd', 4)[1]), address(('cd', 4)[2]), delegate.return_data[64] << 192, delegate.return_data[0] << 64, Mask(192, 0, delegate.return_data[32]), address(('cd', 4).length), 1);
                        stor64E8 = 0
}

function withdraw(address arg1, uint112 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == Mask(112, 0, arg2)
    if stor64E8:
        revert with 0, 'NCY_REENTRANT_CALL'
    stor64E8 = 1
    if not arg1:
        if not Mask(112, 0, arg2):
            Mask(192, 0, stor1[msg.sender][address(arg1)]) = Mask(192, 0, ('signextend', 23, ('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', 'msg.sender', ('name', 'stor1', 1))))))))
            if ('signextend', 23, ('signextend', 23, ('or', ('mask_shl', 192, 0, 0, ('signextend', 23, ('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', 'msg.sender', ('name', 'stor1', 1)))))))), ('mask_shl', 64, 192, 0, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', 'msg.sender', ('name', 'stor1', 1))))))))) < 0:
                revert with 0, 'E1w1'
            if not uint256(liabilities[address(msg.sender)].field_0):
                if not arg1:
                    call msg.sender with:
                       value Mask(112, 0, arg2) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'E6w'
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(112, 0, arg2) << 112
                    mem[388 len 0] = 0
                    call arg1 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, Mask(112, 0, arg2) << 112) << 256, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0x5245454e5452414e43595f5245454e5452414e545f43414c4c
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xcb5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
            else:
                mem[1284] = liquidationPremium
                require ext_code.size(0x2f3b025bf2d57c47249c107603a6b6fab0b0e65a)
                delegate 0x2f3b025bf2d57c47249c107603a6b6fab0b0e65a.0xf127baa1 with:
                     gas gas_remaining wei
                    args 3, 2, 1, 4, msg.sender, stor7, stor6, stor5, stor5, stakeRisk, liquidationPremium
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                require bool(ceil32(return_data.size) + 1088 <= test266151307())
                require delegate.return_data[0] < 5
                require delegate.return_data[0] <= 4
                if delegate.return_data[0]:
                    revert with 0, 'E1w2'
                if not arg1:
                    call msg.sender with:
                       value Mask(112, 0, arg2) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'E6w'
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 1358 len 26]
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 1252 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(112, 0, arg2) << 112
                    mem[ceil32(return_data.size) + 1316 len 0] = 0
                    call arg1 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, Mask(112, 0, arg2) << 112) << 256, mem[ceil32(return_data.size) + 1316 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0x5245454e5452414e43595f5245454e5452414e545f43414c4c
                    mem[ceil32(return_data.size) + 1284 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 1284]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xcb5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 1363 len 22]
            emit NewAssetTransaction(0, 0, uint64(block.timestamp), msg.sender, arg1);
        else:
            if 100 * 10^6 * Mask(112, 0, arg2) / Mask(112, 0, arg2) != 100 * 10^6:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if 100 * 10^6 * Mask(112, 0, arg2) / 10^18 >= 0x7fffffffffffffffffffffffffff:
                revert with 0, 'E3U'
            Mask(192, 0, stor1[msg.sender][address(arg1)]) = Mask(192, 0, ('signextend', 23, ('add', ('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', 'msg.sender', ('name', 'stor1', 1)))))), ('mul', -1, ('signextend', 13, ('div', ('mul', 100000000, ('mask_shl', 112, 0, 0, ('param', 'arg2'))), 1000000000000000000))))))
            if ('signextend', 23, ('signextend', 23, ('or', ('mask_shl', 192, 0, 0, ('signextend', 23, ('add', ('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', 'msg.sender', ('name', 'stor1', 1)))))), ('mul', -1, ('signextend', 13, ('div', ('mul', 100000000, ('mask_shl', 112, 0, 0, ('param', 'arg2'))), 1000000000000000000)))))), ('mask_shl', 64, 192, 0, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', 'msg.sender', ('name', 'stor1', 1))))))))) < 0:
                revert with 0, 'E1w1'
            if not uint256(liabilities[address(msg.sender)].field_0):
                if not arg1:
                    call msg.sender with:
                       value Mask(112, 0, arg2) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'E6w'
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(112, 0, arg2) << 112
                    call arg1 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(112, 0, arg2) << 368, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0x5245454e5452414e43595f5245454e5452414e545f43414c4c
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xcb5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
            else:
                mem[1284] = liquidationPremium
                require ext_code.size(0x2f3b025bf2d57c47249c107603a6b6fab0b0e65a)
                delegate 0x2f3b025bf2d57c47249c107603a6b6fab0b0e65a.0xf127baa1 with:
                     gas gas_remaining wei
                    args 3, 2, 1, 4, msg.sender, stor7, stor6, stor5, stor5, stakeRisk, liquidationPremium
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                require bool(ceil32(return_data.size) + 1088 <= test266151307())
                require delegate.return_data[0] < 5
                require delegate.return_data[0] <= 4
                if delegate.return_data[0]:
                    revert with 0, 'E1w2'
                if not arg1:
                    call msg.sender with:
                       value Mask(112, 0, arg2) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'E6w'
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 1358 len 26]
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 1252 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(112, 0, arg2) << 112
                    call arg1 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(112, 0, arg2) << 368, mem[ceil32(return_data.size) + 1316 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0x5245454e5452414e43595f5245454e5452414e545f43414c4c
                    mem[ceil32(return_data.size) + 1284 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 1284]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xcb5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 1363 len 22]
            emit NewAssetTransaction(0, 100 * 10^6 * Mask(112, 0, arg2) / 10^18 << 144, uint64(block.timestamp), msg.sender, arg1);
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not Mask(112, 0, arg2):
            if 10^ext_call.return_data[31 len 1] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 10^ext_call.return_data[31 len 1]
            if 0 / 10^ext_call.return_data[31 len 1] >= 0x7fffffffffffffffffffffffffff:
                revert with 0, 'E3U'
            Mask(192, 0, stor1[msg.sender][address(arg1)]) = Mask(192, 0, ('signextend', 23, ('add', ('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', 'msg.sender', ('name', 'stor1', 1)))))), ('mul', -1, ('signextend', 13, ('div', 0, ('exp', 10, ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)))))))))
            if ('signextend', 23, ('signextend', 23, ('or', ('mask_shl', 192, 0, 0, ('signextend', 23, ('add', ('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', 'msg.sender', ('name', 'stor1', 1)))))), ('mul', -1, ('signextend', 13, ('div', 0, ('exp', 10, ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32))))))))), ('mask_shl', 64, 192, 0, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', 'msg.sender', ('name', 'stor1', 1))))))))) < 0:
                revert with 0, 'E1w1'
            if not uint256(liabilities[address(msg.sender)].field_0):
                if not arg1:
                    call msg.sender with:
                       value Mask(112, 0, arg2) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'E6w'
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(112, 0, arg2) << 112
                    call arg1 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(112, 0, arg2) << 368, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0x5245454e5452414e43595f5245454e5452414e545f43414c4c
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xcb5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
            else:
                mem[1284] = liquidationPremium
                require ext_code.size(0x2f3b025bf2d57c47249c107603a6b6fab0b0e65a)
                delegate 0x2f3b025bf2d57c47249c107603a6b6fab0b0e65a.0xf127baa1 with:
                     gas gas_remaining wei
                    args 3, 2, 1, 4, msg.sender, stor7, stor6, stor5, stor5, stakeRisk, liquidationPremium
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                require bool(ceil32(return_data.size) + 1088 <= test266151307())
                require delegate.return_data[0] < 5
                require delegate.return_data[0] <= 4
                if delegate.return_data[0]:
                    revert with 0, 'E1w2'
                if not arg1:
                    call msg.sender with:
                       value Mask(112, 0, arg2) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'E6w'
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 1358 len 26]
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 1252 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(112, 0, arg2) << 112
                    call arg1 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(112, 0, arg2) << 368, mem[ceil32(return_data.size) + 1316 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0x5245454e5452414e43595f5245454e5452414e545f43414c4c
                    mem[ceil32(return_data.size) + 1284 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 1284]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xcb5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 1363 len 22]
            emit NewAssetTransaction(0, 0 / 10^uint8(ext_call.return_data[0]) << 144, uint64(block.timestamp), msg.sender, arg1);
        else:
            if 100 * 10^6 * Mask(112, 0, arg2) / Mask(112, 0, arg2) != 100 * 10^6:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if 10^ext_call.return_data[31 len 1] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 10^ext_call.return_data[31 len 1]
            if 100 * 10^6 * Mask(112, 0, arg2) / 10^ext_call.return_data[31 len 1] >= 0x7fffffffffffffffffffffffffff:
                revert with 0, 'E3U'
            Mask(192, 0, stor1[msg.sender][address(arg1)]) = Mask(192, 0, ('signextend', 23, ('add', ('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', 'msg.sender', ('name', 'stor1', 1)))))), ('mul', -1, ('signextend', 13, ('div', ('mul', 100000000, ('mask_shl', 112, 0, 0, ('param', 'arg2'))), ('exp', 10, ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32)))))))))
            if ('signextend', 23, ('signextend', 23, ('or', ('mask_shl', 192, 0, 0, ('signextend', 23, ('add', ('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', 'msg.sender', ('name', 'stor1', 1)))))), ('mul', -1, ('signextend', 13, ('div', ('mul', 100000000, ('mask_shl', 112, 0, 0, ('param', 'arg2'))), ('exp', 10, ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32))))))))), ('mask_shl', 64, 192, 0, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', 'msg.sender', ('name', 'stor1', 1))))))))) < 0:
                revert with 0, 'E1w1'
            if not uint256(liabilities[address(msg.sender)].field_0):
                if not arg1:
                    call msg.sender with:
                       value Mask(112, 0, arg2) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'E6w'
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(112, 0, arg2) << 112
                    mem[388 len 0] = 0
                    call arg1 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, Mask(112, 0, arg2) << 112) << 256, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0x5245454e5452414e43595f5245454e5452414e545f43414c4c
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xcb5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
            else:
                mem[1284] = liquidationPremium
                require ext_code.size(0x2f3b025bf2d57c47249c107603a6b6fab0b0e65a)
                delegate 0x2f3b025bf2d57c47249c107603a6b6fab0b0e65a.0xf127baa1 with:
                     gas gas_remaining wei
                    args 3, 2, 1, 4, msg.sender, stor7, stor6, stor5, stor5, stakeRisk, liquidationPremium
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                require bool(ceil32(return_data.size) + 1088 <= test266151307())
                require delegate.return_data[0] < 5
                require delegate.return_data[0] <= 4
                if delegate.return_data[0]:
                    revert with 0, 'E1w2'
                if not arg1:
                    call msg.sender with:
                       value Mask(112, 0, arg2) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'E6w'
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 1358 len 26]
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 1252 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(112, 0, arg2) << 112
                    mem[ceil32(return_data.size) + 1316 len 0] = 0
                    call arg1 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, Mask(112, 0, arg2) << 112) << 256, mem[ceil32(return_data.size) + 1316 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0x5245454e5452414e43595f5245454e5452414e545f43414c4c
                    mem[ceil32(return_data.size) + 1284 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 1284]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xcb5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 1363 len 22]
            emit NewAssetTransaction(0, 100 * 10^6 * Mask(112, 0, arg2) / 10^uint8(ext_call.return_data[0]) << 144, uint64(block.timestamp), msg.sender, arg1);
    stor64E8 = 0
}

function depositAsset(address arg1, uint112 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == Mask(112, 0, arg2)
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(112, 0, arg2) << 112
    mem[416 len 4] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(112, 0, arg2) << 624, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(112, 0, arg2)
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0xcb5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if not arg1:
            if not Mask(112, 0, arg2):
                Mask(192, 0, stor1[address(msg.sender)][address(arg1)]) = Mask(192, 0, ('signextend', 23, ('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))))))))
                if Mask(112, 0, arg2):
                    emit NewAssetTransaction(1, 0, uint64(block.timestamp), msg.sender, arg1);
                if 0 > ('signextend', 23, ('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', 'msg.sender', ('name', 'stor1', 1))))))):
                    if ('signextend', 23, ('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))))))) >= 0:
                        idx = 0
                        while idx < uint256(liabilities[address(msg.sender)].field_0):
                            mem[32] = 2
                            require idx < uint256(liabilities[address(msg.sender)].field_0)
                            mem[0] = sha3(address(msg.sender), 2)
                            if liabilities[address(msg.sender)][idx].field_0 != arg1:
                                idx = idx + 1
                                continue 
                            if uint256(liabilities[address(msg.sender)].field_0) > 1:
                                require uint256(liabilities[address(msg.sender)].field_0) - 1 < uint256(liabilities[address(msg.sender)].field_0)
                                require idx < uint256(liabilities[address(msg.sender)].field_0)
                                liabilities[address(msg.sender)][idx].field_0 = liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_0
                                liabilities[address(msg.sender)][idx].field_0 = liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_0
                                Mask(96, 0, liabilities[address(msg.sender)][idx].field_160) = uint64(liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_160)
                                uint32(liabilities[address(msg.sender)][idx].field_224) = 0
                                Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) = Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256)
                            require uint256(liabilities[address(msg.sender)].field_0)
                            Mask(224, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_0) = 0
                            Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) = 0
                            uint256(liabilities[address(msg.sender)].field_0)--
                    else:
                        idx = 0
                        while idx < uint256(liabilities[address(msg.sender)].field_0) - 1:
                            mem[32] = 2
                            require idx < uint256(liabilities[address(msg.sender)].field_0)
                            mem[0] = sha3(address(msg.sender), 2)
                            if liabilities[address(msg.sender)][idx].field_0 != arg1:
                                idx = idx + 1
                                continue 
                            require idx < uint256(liabilities[address(msg.sender)].field_0)
                            if 0 >= Mask(192, 0, liabilities[address(msg.sender)][idx].field_256):
                                Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) = Mask(192, 0, -('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)))))))
                                uint64(liabilities[address(msg.sender)][idx].field_160) = uint64(block.timestamp)
                        require uint256(liabilities[address(msg.sender)].field_0) - 1 < uint256(liabilities[address(msg.sender)].field_0)
                        if 0 >= Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256):
                            Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) = Mask(192, 0, -('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)))))))
                            uint64(liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_160) = uint64(block.timestamp)
            else:
                if 100 * 10^6 * Mask(112, 0, arg2) / Mask(112, 0, arg2) != 100 * 10^6:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                if 100 * 10^6 * Mask(112, 0, arg2) / 10^18 >= 0x7fffffffffffffffffffffffffff:
                    revert with 0, 'E3U'
                Mask(192, 0, stor1[address(msg.sender)][address(arg1)]) = Mask(192, 0, ('signextend', 23, ('add', ('signextend', 13, ('div', ('mul', 100000000, ('mask_shl', 112, 0, 0, ('param', 'arg2'))), 1000000000000000000)), ('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)))))))))
                if Mask(112, 0, arg2):
                    emit NewAssetTransaction(1, 100 * 10^6 * Mask(112, 0, arg2) / 10^18 << 144, uint64(block.timestamp), msg.sender, arg1);
                if 0 > ('signextend', 23, ('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', 'msg.sender', ('name', 'stor1', 1))))))):
                    if ('signextend', 23, ('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))))))) >= 0:
                        idx = 0
                        while idx < uint256(liabilities[address(msg.sender)].field_0):
                            mem[32] = 2
                            require idx < uint256(liabilities[address(msg.sender)].field_0)
                            mem[0] = sha3(address(msg.sender), 2)
                            if liabilities[address(msg.sender)][idx].field_0 != arg1:
                                idx = idx + 1
                                continue 
                            if uint256(liabilities[address(msg.sender)].field_0) > 1:
                                require uint256(liabilities[address(msg.sender)].field_0) - 1 < uint256(liabilities[address(msg.sender)].field_0)
                                require idx < uint256(liabilities[address(msg.sender)].field_0)
                                liabilities[address(msg.sender)][idx].field_0 = liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_0
                                liabilities[address(msg.sender)][idx].field_0 = liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_0
                                Mask(96, 0, liabilities[address(msg.sender)][idx].field_160) = uint64(liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_160)
                                uint32(liabilities[address(msg.sender)][idx].field_224) = 0
                                Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) = Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256)
                            require uint256(liabilities[address(msg.sender)].field_0)
                            Mask(224, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_0) = 0
                            Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) = 0
                            uint256(liabilities[address(msg.sender)].field_0)--
                    else:
                        idx = 0
                        while idx < uint256(liabilities[address(msg.sender)].field_0) - 1:
                            mem[32] = 2
                            require idx < uint256(liabilities[address(msg.sender)].field_0)
                            mem[0] = sha3(address(msg.sender), 2)
                            if liabilities[address(msg.sender)][idx].field_0 != arg1:
                                idx = idx + 1
                                continue 
                            require idx < uint256(liabilities[address(msg.sender)].field_0)
                            if Mask(112, 0, 100 * 10^6 * Mask(112, 0, arg2) / 10^18) < Mask(192, 0, liabilities[address(msg.sender)][idx].field_256):
                                Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) = Mask(192, 0, Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) - Mask(112, 0, 100 * 10^6 * Mask(112, 0, arg2) / 10^18))
                            else:
                                Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) = Mask(192, 0, -('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)))))))
                                uint64(liabilities[address(msg.sender)][idx].field_160) = uint64(block.timestamp)
                        require uint256(liabilities[address(msg.sender)].field_0) - 1 < uint256(liabilities[address(msg.sender)].field_0)
                        if Mask(112, 0, 100 * 10^6 * Mask(112, 0, arg2) / 10^18) < Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256):
                            Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) = Mask(192, 0, Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) - Mask(112, 0, 100 * 10^6 * Mask(112, 0, arg2) / 10^18))
                        else:
                            Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) = Mask(192, 0, -('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)))))))
                            uint64(liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_160) = uint64(block.timestamp)
        else:
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not Mask(112, 0, arg2):
                if 10^ext_call.return_data[31 len 1] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^ext_call.return_data[31 len 1]
                if 0 / 10^ext_call.return_data[31 len 1] >= 0x7fffffffffffffffffffffffffff:
                    revert with 0, 'E3U'
                Mask(192, 0, stor1[address(msg.sender)][address(arg1)]) = Mask(192, 0, ('signextend', 23, ('add', ('signextend', 13, ('div', 0, ('exp', 10, ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32))))), ('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)))))))))
                if Mask(112, 0, arg2):
                    emit NewAssetTransaction(1, 0 / 10^uint8(ext_call.return_data[0]) << 144, uint64(block.timestamp), msg.sender, arg1);
                if 0 > ('signextend', 23, ('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', 'msg.sender', ('name', 'stor1', 1))))))):
                    if ('signextend', 23, ('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))))))) >= 0:
                        idx = 0
                        while idx < uint256(liabilities[address(msg.sender)].field_0):
                            mem[32] = 2
                            require idx < uint256(liabilities[address(msg.sender)].field_0)
                            mem[0] = sha3(address(msg.sender), 2)
                            if liabilities[address(msg.sender)][idx].field_0 != arg1:
                                idx = idx + 1
                                continue 
                            if uint256(liabilities[address(msg.sender)].field_0) > 1:
                                require uint256(liabilities[address(msg.sender)].field_0) - 1 < uint256(liabilities[address(msg.sender)].field_0)
                                require idx < uint256(liabilities[address(msg.sender)].field_0)
                                liabilities[address(msg.sender)][idx].field_0 = liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_0
                                liabilities[address(msg.sender)][idx].field_0 = liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_0
                                Mask(96, 0, liabilities[address(msg.sender)][idx].field_160) = uint64(liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_160)
                                uint32(liabilities[address(msg.sender)][idx].field_224) = 0
                                Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) = Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256)
                            require uint256(liabilities[address(msg.sender)].field_0)
                            Mask(224, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_0) = 0
                            Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) = 0
                            uint256(liabilities[address(msg.sender)].field_0)--
                    else:
                        idx = 0
                        while idx < uint256(liabilities[address(msg.sender)].field_0) - 1:
                            mem[32] = 2
                            require idx < uint256(liabilities[address(msg.sender)].field_0)
                            mem[0] = sha3(address(msg.sender), 2)
                            if liabilities[address(msg.sender)][idx].field_0 != arg1:
                                idx = idx + 1
                                continue 
                            require idx < uint256(liabilities[address(msg.sender)].field_0)
                            if Mask(112, 0, 0 / 10^uint8(ext_call.return_data[0])) < Mask(192, 0, liabilities[address(msg.sender)][idx].field_256):
                                Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) = Mask(192, 0, Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) - Mask(112, 0, 0 / 10^uint8(ext_call.return_data[0])))
                            else:
                                Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) = Mask(192, 0, -('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)))))))
                                uint64(liabilities[address(msg.sender)][idx].field_160) = uint64(block.timestamp)
                        require uint256(liabilities[address(msg.sender)].field_0) - 1 < uint256(liabilities[address(msg.sender)].field_0)
                        if Mask(112, 0, 0 / 10^uint8(ext_call.return_data[0])) < Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256):
                            Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) = Mask(192, 0, Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) - Mask(112, 0, 0 / 10^uint8(ext_call.return_data[0])))
                        else:
                            Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) = Mask(192, 0, -('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)))))))
                            uint64(liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_160) = uint64(block.timestamp)
            else:
                if 100 * 10^6 * Mask(112, 0, arg2) / Mask(112, 0, arg2) != 100 * 10^6:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                if 10^ext_call.return_data[31 len 1] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^ext_call.return_data[31 len 1]
                if 100 * 10^6 * Mask(112, 0, arg2) / 10^ext_call.return_data[31 len 1] >= 0x7fffffffffffffffffffffffffff:
                    revert with 0, 'E3U'
                Mask(192, 0, stor1[address(msg.sender)][address(arg1)]) = Mask(192, 0, ('signextend', 23, ('add', ('signextend', 13, ('div', ('mul', 100000000, ('mask_shl', 112, 0, 0, ('param', 'arg2'))), ('exp', 10, ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32))))), ('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)))))))))
                if Mask(112, 0, arg2):
                    emit NewAssetTransaction(1, 100 * 10^6 * Mask(112, 0, arg2) / 10^uint8(ext_call.return_data[0]) << 144, uint64(block.timestamp), msg.sender, arg1);
                if 0 > ('signextend', 23, ('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', 'msg.sender', ('name', 'stor1', 1))))))):
                    if ('signextend', 23, ('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))))))) >= 0:
                        idx = 0
                        while idx < uint256(liabilities[address(msg.sender)].field_0):
                            mem[32] = 2
                            require idx < uint256(liabilities[address(msg.sender)].field_0)
                            mem[0] = sha3(address(msg.sender), 2)
                            if liabilities[address(msg.sender)][idx].field_0 != arg1:
                                idx = idx + 1
                                continue 
                            if uint256(liabilities[address(msg.sender)].field_0) > 1:
                                require uint256(liabilities[address(msg.sender)].field_0) - 1 < uint256(liabilities[address(msg.sender)].field_0)
                                require idx < uint256(liabilities[address(msg.sender)].field_0)
                                liabilities[address(msg.sender)][idx].field_0 = liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_0
                                liabilities[address(msg.sender)][idx].field_0 = liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_0
                                Mask(96, 0, liabilities[address(msg.sender)][idx].field_160) = uint64(liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_160)
                                uint32(liabilities[address(msg.sender)][idx].field_224) = 0
                                Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) = Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256)
                            require uint256(liabilities[address(msg.sender)].field_0)
                            Mask(224, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_0) = 0
                            Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) = 0
                            uint256(liabilities[address(msg.sender)].field_0)--
                    else:
                        idx = 0
                        while idx < uint256(liabilities[address(msg.sender)].field_0) - 1:
                            mem[32] = 2
                            require idx < uint256(liabilities[address(msg.sender)].field_0)
                            mem[0] = sha3(address(msg.sender), 2)
                            if liabilities[address(msg.sender)][idx].field_0 != arg1:
                                idx = idx + 1
                                continue 
                            require idx < uint256(liabilities[address(msg.sender)].field_0)
                            if Mask(112, 0, 100 * 10^6 * Mask(112, 0, arg2) / 10^uint8(ext_call.return_data[0])) < Mask(192, 0, liabilities[address(msg.sender)][idx].field_256):
                                Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) = Mask(192, 0, Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) - Mask(112, 0, 100 * 10^6 * Mask(112, 0, arg2) / 10^uint8(ext_call.return_data[0])))
                            else:
                                Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) = Mask(192, 0, -('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)))))))
                                uint64(liabilities[address(msg.sender)][idx].field_160) = uint64(block.timestamp)
                        require uint256(liabilities[address(msg.sender)].field_0) - 1 < uint256(liabilities[address(msg.sender)].field_0)
                        if Mask(112, 0, 100 * 10^6 * Mask(112, 0, arg2) / 10^uint8(ext_call.return_data[0])) < Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256):
                            Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) = Mask(192, 0, Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) - Mask(112, 0, 100 * 10^6 * Mask(112, 0, arg2) / 10^uint8(ext_call.return_data[0])))
                        else:
                            Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) = Mask(192, 0, -('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)))))))
                            uint64(liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_160) = uint64(block.timestamp)
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0xcb5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if not arg1:
            if not Mask(112, 0, arg2):
                Mask(192, 0, stor1[address(msg.sender)][address(arg1)]) = Mask(192, 0, ('signextend', 23, ('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))))))))
                if Mask(112, 0, arg2):
                    emit NewAssetTransaction(1, 0, uint64(block.timestamp), msg.sender, arg1);
                if 0 > ('signextend', 23, ('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', 'msg.sender', ('name', 'stor1', 1))))))):
                    if ('signextend', 23, ('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))))))) >= 0:
                        idx = 0
                        while idx < uint256(liabilities[address(msg.sender)].field_0):
                            mem[32] = 2
                            require idx < uint256(liabilities[address(msg.sender)].field_0)
                            mem[0] = sha3(address(msg.sender), 2)
                            if liabilities[address(msg.sender)][idx].field_0 != arg1:
                                idx = idx + 1
                                continue 
                            if uint256(liabilities[address(msg.sender)].field_0) > 1:
                                require uint256(liabilities[address(msg.sender)].field_0) - 1 < uint256(liabilities[address(msg.sender)].field_0)
                                require idx < uint256(liabilities[address(msg.sender)].field_0)
                                liabilities[address(msg.sender)][idx].field_0 = liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_0
                                liabilities[address(msg.sender)][idx].field_0 = liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_0
                                Mask(96, 0, liabilities[address(msg.sender)][idx].field_160) = uint64(liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_160)
                                uint32(liabilities[address(msg.sender)][idx].field_224) = 0
                                Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) = Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256)
                            require uint256(liabilities[address(msg.sender)].field_0)
                            Mask(224, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_0) = 0
                            Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) = 0
                            uint256(liabilities[address(msg.sender)].field_0)--
                    else:
                        idx = 0
                        while idx < uint256(liabilities[address(msg.sender)].field_0) - 1:
                            mem[32] = 2
                            require idx < uint256(liabilities[address(msg.sender)].field_0)
                            mem[0] = sha3(address(msg.sender), 2)
                            if liabilities[address(msg.sender)][idx].field_0 != arg1:
                                idx = idx + 1
                                continue 
                            require idx < uint256(liabilities[address(msg.sender)].field_0)
                            if 0 >= Mask(192, 0, liabilities[address(msg.sender)][idx].field_256):
                                Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) = Mask(192, 0, -('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)))))))
                                uint64(liabilities[address(msg.sender)][idx].field_160) = uint64(block.timestamp)
                        require uint256(liabilities[address(msg.sender)].field_0) - 1 < uint256(liabilities[address(msg.sender)].field_0)
                        if 0 >= Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256):
                            Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) = Mask(192, 0, -('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)))))))
                            uint64(liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_160) = uint64(block.timestamp)
            else:
                if 100 * 10^6 * Mask(112, 0, arg2) / Mask(112, 0, arg2) != 100 * 10^6:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
                if 100 * 10^6 * Mask(112, 0, arg2) / 10^18 >= 0x7fffffffffffffffffffffffffff:
                    revert with 0, 'E3U'
                Mask(192, 0, stor1[address(msg.sender)][address(arg1)]) = Mask(192, 0, ('signextend', 23, ('add', ('signextend', 13, ('div', ('mul', 100000000, ('mask_shl', 112, 0, 0, ('param', 'arg2'))), 1000000000000000000)), ('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)))))))))
                if Mask(112, 0, arg2):
                    emit NewAssetTransaction(1, 100 * 10^6 * Mask(112, 0, arg2) / 10^18 << 144, uint64(block.timestamp), msg.sender, arg1);
                if 0 > ('signextend', 23, ('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', 'msg.sender', ('name', 'stor1', 1))))))):
                    if ('signextend', 23, ('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))))))) >= 0:
                        idx = 0
                        while idx < uint256(liabilities[address(msg.sender)].field_0):
                            mem[32] = 2
                            require idx < uint256(liabilities[address(msg.sender)].field_0)
                            mem[0] = sha3(address(msg.sender), 2)
                            if liabilities[address(msg.sender)][idx].field_0 != arg1:
                                idx = idx + 1
                                continue 
                            if uint256(liabilities[address(msg.sender)].field_0) > 1:
                                require uint256(liabilities[address(msg.sender)].field_0) - 1 < uint256(liabilities[address(msg.sender)].field_0)
                                require idx < uint256(liabilities[address(msg.sender)].field_0)
                                liabilities[address(msg.sender)][idx].field_0 = liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_0
                                liabilities[address(msg.sender)][idx].field_0 = liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_0
                                Mask(96, 0, liabilities[address(msg.sender)][idx].field_160) = uint64(liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_160)
                                uint32(liabilities[address(msg.sender)][idx].field_224) = 0
                                Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) = Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256)
                            require uint256(liabilities[address(msg.sender)].field_0)
                            Mask(224, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_0) = 0
                            Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) = 0
                            uint256(liabilities[address(msg.sender)].field_0)--
                    else:
                        idx = 0
                        while idx < uint256(liabilities[address(msg.sender)].field_0) - 1:
                            mem[32] = 2
                            require idx < uint256(liabilities[address(msg.sender)].field_0)
                            mem[0] = sha3(address(msg.sender), 2)
                            if liabilities[address(msg.sender)][idx].field_0 != arg1:
                                idx = idx + 1
                                continue 
                            require idx < uint256(liabilities[address(msg.sender)].field_0)
                            if Mask(112, 0, 100 * 10^6 * Mask(112, 0, arg2) / 10^18) < Mask(192, 0, liabilities[address(msg.sender)][idx].field_256):
                                Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) = Mask(192, 0, Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) - Mask(112, 0, 100 * 10^6 * Mask(112, 0, arg2) / 10^18))
                            else:
                                Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) = Mask(192, 0, -('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)))))))
                                uint64(liabilities[address(msg.sender)][idx].field_160) = uint64(block.timestamp)
                        require uint256(liabilities[address(msg.sender)].field_0) - 1 < uint256(liabilities[address(msg.sender)].field_0)
                        if Mask(112, 0, 100 * 10^6 * Mask(112, 0, arg2) / 10^18) < Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256):
                            Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) = Mask(192, 0, Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) - Mask(112, 0, 100 * 10^6 * Mask(112, 0, arg2) / 10^18))
                        else:
                            Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) = Mask(192, 0, -('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)))))))
                            uint64(liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_160) = uint64(block.timestamp)
        else:
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not Mask(112, 0, arg2):
                if 10^ext_call.return_data[31 len 1] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^ext_call.return_data[31 len 1]
                if 0 / 10^ext_call.return_data[31 len 1] >= 0x7fffffffffffffffffffffffffff:
                    revert with 0, 'E3U'
                Mask(192, 0, stor1[address(msg.sender)][address(arg1)]) = Mask(192, 0, ('signextend', 23, ('add', ('signextend', 13, ('div', 0, ('exp', 10, ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32))))), ('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)))))))))
                if Mask(112, 0, arg2):
                    emit NewAssetTransaction(1, 0 / 10^uint8(ext_call.return_data[0]) << 144, uint64(block.timestamp), msg.sender, arg1);
                if 0 > ('signextend', 23, ('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', 'msg.sender', ('name', 'stor1', 1))))))):
                    if ('signextend', 23, ('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))))))) >= 0:
                        idx = 0
                        while idx < uint256(liabilities[address(msg.sender)].field_0):
                            mem[32] = 2
                            require idx < uint256(liabilities[address(msg.sender)].field_0)
                            mem[0] = sha3(address(msg.sender), 2)
                            if liabilities[address(msg.sender)][idx].field_0 != arg1:
                                idx = idx + 1
                                continue 
                            if uint256(liabilities[address(msg.sender)].field_0) > 1:
                                require uint256(liabilities[address(msg.sender)].field_0) - 1 < uint256(liabilities[address(msg.sender)].field_0)
                                require idx < uint256(liabilities[address(msg.sender)].field_0)
                                liabilities[address(msg.sender)][idx].field_0 = liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_0
                                liabilities[address(msg.sender)][idx].field_0 = liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_0
                                Mask(96, 0, liabilities[address(msg.sender)][idx].field_160) = uint64(liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_160)
                                uint32(liabilities[address(msg.sender)][idx].field_224) = 0
                                Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) = Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256)
                            require uint256(liabilities[address(msg.sender)].field_0)
                            Mask(224, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_0) = 0
                            Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) = 0
                            uint256(liabilities[address(msg.sender)].field_0)--
                    else:
                        idx = 0
                        while idx < uint256(liabilities[address(msg.sender)].field_0) - 1:
                            mem[32] = 2
                            require idx < uint256(liabilities[address(msg.sender)].field_0)
                            mem[0] = sha3(address(msg.sender), 2)
                            if liabilities[address(msg.sender)][idx].field_0 != arg1:
                                idx = idx + 1
                                continue 
                            require idx < uint256(liabilities[address(msg.sender)].field_0)
                            if Mask(112, 0, 0 / 10^uint8(ext_call.return_data[0])) < Mask(192, 0, liabilities[address(msg.sender)][idx].field_256):
                                Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) = Mask(192, 0, Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) - Mask(112, 0, 0 / 10^uint8(ext_call.return_data[0])))
                            else:
                                Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) = Mask(192, 0, -('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)))))))
                                uint64(liabilities[address(msg.sender)][idx].field_160) = uint64(block.timestamp)
                        require uint256(liabilities[address(msg.sender)].field_0) - 1 < uint256(liabilities[address(msg.sender)].field_0)
                        if Mask(112, 0, 0 / 10^uint8(ext_call.return_data[0])) < Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256):
                            Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) = Mask(192, 0, Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) - Mask(112, 0, 0 / 10^uint8(ext_call.return_data[0])))
                        else:
                            Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) = Mask(192, 0, -('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)))))))
                            uint64(liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_160) = uint64(block.timestamp)
            else:
                if 100 * 10^6 * Mask(112, 0, arg2) / Mask(112, 0, arg2) != 100 * 10^6:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
                if 10^ext_call.return_data[31 len 1] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^ext_call.return_data[31 len 1]
                if 100 * 10^6 * Mask(112, 0, arg2) / 10^ext_call.return_data[31 len 1] >= 0x7fffffffffffffffffffffffffff:
                    revert with 0, 'E3U'
                Mask(192, 0, stor1[address(msg.sender)][address(arg1)]) = Mask(192, 0, ('signextend', 23, ('add', ('signextend', 13, ('div', ('mul', 100000000, ('mask_shl', 112, 0, 0, ('param', 'arg2'))), ('exp', 10, ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32))))), ('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)))))))))
                if Mask(112, 0, arg2):
                    emit NewAssetTransaction(1, 100 * 10^6 * Mask(112, 0, arg2) / 10^uint8(ext_call.return_data[0]) << 144, uint64(block.timestamp), msg.sender, arg1);
                if 0 > ('signextend', 23, ('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', 'msg.sender', ('name', 'stor1', 1))))))):
                    if ('signextend', 23, ('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))))))) >= 0:
                        idx = 0
                        while idx < uint256(liabilities[address(msg.sender)].field_0):
                            mem[32] = 2
                            require idx < uint256(liabilities[address(msg.sender)].field_0)
                            mem[0] = sha3(address(msg.sender), 2)
                            if liabilities[address(msg.sender)][idx].field_0 != arg1:
                                idx = idx + 1
                                continue 
                            if uint256(liabilities[address(msg.sender)].field_0) > 1:
                                require uint256(liabilities[address(msg.sender)].field_0) - 1 < uint256(liabilities[address(msg.sender)].field_0)
                                require idx < uint256(liabilities[address(msg.sender)].field_0)
                                liabilities[address(msg.sender)][idx].field_0 = liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_0
                                liabilities[address(msg.sender)][idx].field_0 = liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_0
                                Mask(96, 0, liabilities[address(msg.sender)][idx].field_160) = uint64(liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_160)
                                uint32(liabilities[address(msg.sender)][idx].field_224) = 0
                                Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) = Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256)
                            require uint256(liabilities[address(msg.sender)].field_0)
                            Mask(224, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_0) = 0
                            Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) = 0
                            uint256(liabilities[address(msg.sender)].field_0)--
                    else:
                        idx = 0
                        while idx < uint256(liabilities[address(msg.sender)].field_0) - 1:
                            mem[32] = 2
                            require idx < uint256(liabilities[address(msg.sender)].field_0)
                            mem[0] = sha3(address(msg.sender), 2)
                            if liabilities[address(msg.sender)][idx].field_0 != arg1:
                                idx = idx + 1
                                continue 
                            require idx < uint256(liabilities[address(msg.sender)].field_0)
                            if Mask(112, 0, 100 * 10^6 * Mask(112, 0, arg2) / 10^uint8(ext_call.return_data[0])) < Mask(192, 0, liabilities[address(msg.sender)][idx].field_256):
                                Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) = Mask(192, 0, Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) - Mask(112, 0, 100 * 10^6 * Mask(112, 0, arg2) / 10^uint8(ext_call.return_data[0])))
                            else:
                                Mask(192, 0, liabilities[address(msg.sender)][idx].field_256) = Mask(192, 0, -('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)))))))
                                uint64(liabilities[address(msg.sender)][idx].field_160) = uint64(block.timestamp)
                        require uint256(liabilities[address(msg.sender)].field_0) - 1 < uint256(liabilities[address(msg.sender)].field_0)
                        if Mask(112, 0, 100 * 10^6 * Mask(112, 0, arg2) / 10^uint8(ext_call.return_data[0])) < Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256):
                            Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) = Mask(192, 0, Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) - Mask(112, 0, 100 * 10^6 * Mask(112, 0, arg2) / 10^uint8(ext_call.return_data[0])))
                        else:
                            Mask(192, 0, liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_256) = Mask(192, 0, -('signextend', 23, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)))))))
                            uint64(liabilities[address(msg.sender)][uint256(liabilities[address(msg.sender)].field_0) - 1].field_160) = uint64(block.timestamp)
}



}
