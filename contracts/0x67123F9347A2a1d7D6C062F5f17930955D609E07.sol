contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'French O', 0

const decimals = 18

const symbol = '', 0


address owner;
mapping of uint8 stor1;
mapping of uint256 stor2;
mapping of struct stor3;
mapping of struct stor4;
address stor5;
address stor7;
address stor8;
uint256 totalSupply;
uint256 _maxTxAmount;
mapping of uint32 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor13;
mapping of uint8 stor14;
mapping of uint8 stor15;
uint256 liquidityFee;
uint256 reflectionFee;
uint256 sub_56ae8b18;
uint256 stor19;
uint256 feeDenominator;
uint256 sub_1f5f38af;
address autoLiquidityReceiverAddress;
address sub_78e29cb6Address;
address routerAddress;
address stor25;
array of address pairs;
uint256 launchedAt;
uint8 feesOnNormalTransfers;
uint8 sub_ed5792d7; offset 8
uint8 freeze_contract; offset 16
address stor28;
address stor28; offset 24
uint256 stor28; offset 16
uint256 stor28; offset 8
uint256 stor29;
uint8 swapEnabled;
uint256 swapThreshold;
uint8 inSwap;
mapping of uint256 stor99;
array of address stor2481041784956016742021570618494952475758789857281704946240779902470294861374;
uint8 stor2E17;
uint8 stor91DA;
uint8 storBEB3;
uint8 storC593;
uint8 storFEAB;

function swapThreshold() {
    return swapThreshold
}

function feeDenominator() {
    return feeDenominator
}

function totalSupply() {
    return totalSupply
}

function sub_1f5f38af(?) {
    return sub_1f5f38af
}

function freeze_contract() {
    return bool(freeze_contract)
}

function sub_56ae8b18(?) {
    return sub_56ae8b18
}

function sub_57b78541(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < 8
    if arg2 > 7:
        revert with 0, 33
    return bool(stor1[address(arg1)][arg2])
}

function feesOnNormalTransfers() {
    return bool(feesOnNormalTransfers)
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint256(balanceOf[address(arg1)])
}

function sub_78e29cb6(?) {
    return sub_78e29cb6Address
}

function _maxTxAmount() {
    return _maxTxAmount
}

function reflectionFee() {
    return reflectionFee
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function liquidityFee() {
    return liquidityFee
}

function pairs(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < pairs.length
    return pairs[arg1]
}

function launchedAt() {
    return launchedAt
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function inSwap() {
    return bool(inSwap)
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_ed5792d7(?) {
    return bool(sub_ed5792d7)
}

function router() {
    return routerAddress
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function claimDividend() {
    require ext_code.size(address(stor28.field_24))
    call address(stor28.field_24).0xf0fc6bca with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getTotalFee() {
    if 1 > !launchedAt:
        revert with 0, 17
    if launchedAt + 1 < block.number:
        return stor19
    if 1 > feeDenominator:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if feeDenominator < 1:
        revert with 0, 17
    return (feeDenominator - 1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownership required.'
    owner = arg1
    idx = 0
    while idx < 8:
        stor1[stor0][idx] = 0
        mem[0] = idx
        mem[32] = sha3(owner, 1)
        stor1[stor0][idx] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    emit OwnershipTransferred(owner, owner);
}

function getCirculatingSupply() {
    if uint256(balanceOf[stor7]) > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < uint256(balanceOf[stor7]):
        revert with 0, 17
    if uint256(balanceOf[stor8]) > totalSupply - uint256(balanceOf[stor7]):
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - uint256(balanceOf[stor7]) < uint256(balanceOf[stor8]):
        revert with 0, 17
    return (totalSupply - uint256(balanceOf[stor7]) - uint256(balanceOf[stor8]))
}

function sub_06fbdcd8(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 2
    mem[ceil32(ceil32(arg1.length)) + 97] = stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
    return memory
      from ceil32(ceil32(arg1.length)) + 97
       len 32
}

function sub_e75cae79(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 2
    mem[ceil32(ceil32(arg1.length)) + 97] = uint64(stor4[stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]].field_8)
    return memory
      from ceil32(ceil32(arg1.length)) + 97
       len 32
}

function sub_8032eccb(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 2
    mem[ceil32(ceil32(arg1.length)) + 97] = bool(uint8(stor4[stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]].field_0))
    return memory
      from ceil32(ceil32(arg1.length)) + 97
       len 32
}

function sub_c41235a6(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(ceil32(arg2.length)) + 97] = 2
    mem[ceil32(ceil32(arg2.length)) + 97] = bool(stor1[address(arg1)][stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]])
    return memory
      from ceil32(ceil32(arg2.length)) + 97
       len 32
}

function sub_07858b02(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 2
    if block.timestamp <= uint64(stor4[stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]].field_8):
        revert with 0, 'Permission is locked until the expiry time.'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 2
    uint8(stor4[stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]].field_0) = 0
    emit PermissionUnlocked(Array(len=arg1.length, data=arg1[all]), stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]);
}

function setLaunchedAt(uint256 arg1) {
    require calldata.size - 4 >= 32
    if storFEAB:
        revert with 0, 'Permission is locked.'
    mem[128] = 'Not authorized. You need the per'
    mem[160] = 0x6d697373696f6e20000000000000000000000000000000000000000000000000
    if bool(stor3[1].field_0):
        if bool(stor3[1].field_0) == uint255(stor3[1].field_0) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor3[1].field_0):
            mem[168] = Mask(248, 8, stor3[1].field_0)
            if stor1[address(msg.sender)][1]:
                launchedAt = arg1
            if floor32((uint255(stor3[1].field_0) * 0.5) + 71) > (uint255(stor3[1].field_0) * 0.5) + 40:
                revert with 0, 
                            32,
                            (uint255(stor3[1].field_0) * 0.5) + 40,
                            Mask(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len uint255(stor3[1].field_0) * 0.5], 0, Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) - 256,
                            Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) - 256
            revert with 0, 
                        32,
                        (uint255(stor3[1].field_0) * 0.5) + 40,
                        'Not authorized. You need the per',
                        0,
                        mem[168 len uint255(stor3[1].field_0) * 0.5],
                        0,
                        Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256
        if bool(stor3[1].field_0) != 1:
            if not stor1[address(msg.sender)][1]:
                revert with memory
                  from 4294967168, 0
                   len -4294967168, 0 - 60
            launchedAt = arg1
        idx = 0
        s = 0
        while idx < uint255(stor3[1].field_0) * 0.5:
            mem[idx + 168] = stor3[1][s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        if stor1[address(msg.sender)][1]:
            launchedAt = arg1
        mem[(uint255(stor3[1].field_0) * 0.5) + 168] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(uint255(stor3[1].field_0) * 0.5) + 172] = 32
        mem[(uint255(stor3[1].field_0) * 0.5) + 204] = mem[96]
        mem[(uint255(stor3[1].field_0) * 0.5) + 236 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) > mem[96]:
            mem[mem[96] + (uint255(stor3[1].field_0) * 0.5) + 236] = 0
        revert with 0, 32, mem[96], mem[(uint255(stor3[1].field_0) * 0.5) + 236 len ceil32(mem[96])]
    if bool(stor3[1].field_0) == stor3[1].field_1 % 128 < 32:
        revert with 0, 34
    if not bool(stor3[1].field_0):
        mem[168] = Mask(248, 8, stor3[1].field_0)
        if stor1[address(msg.sender)][1]:
            launchedAt = arg1
        mem[stor3[1].field_1 % 128 + 236 len floor32(stor3[1].field_1 % 128 + 71)] = 'Not authorized. You need the per', 0, mem[168 len stor3[1].field_1 % 128], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
        if floor32(stor3[1].field_1 % 128 + 71) <= stor3[1].field_1 % 128 + 40:
            revert with 0, 
                        32,
                        stor3[1].field_1 % 128 + 40,
                        'Not authorized. You need the per',
                        0,
                        mem[168 len stor3[1].field_1 % 128],
                        0,
                        Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
        mem[(2 * stor3[1].field_1 % 128) + 276] = 0
        revert with 0, 
                    32,
                    stor3[1].field_1 % 128 + 40,
                    Mask(8 * stor3[1].field_1 % 128 + 40, -(8 * stor3[1].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len stor3[1].field_1 % 128], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256) << (8 * stor3[1].field_1 % 128 + 40) - 256,
                    mem[(2 * stor3[1].field_1 % 128) + 276 len floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 40]
    if bool(stor3[1].field_0) != 1:
        if not stor1[address(msg.sender)][1]:
            revert with memory
              from 4294967168, 0
               len -4294967168, 0 - 60
        launchedAt = arg1
    idx = 0
    s = 0
    while idx < stor3[1].field_1 % 128:
        mem[idx + 168] = stor3[1][s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    if stor1[address(msg.sender)][1]:
        launchedAt = arg1
    mem[stor3[1].field_1 % 128 + 168] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[stor3[1].field_1 % 128 + 172] = 32
    mem[stor3[1].field_1 % 128 + 204] = mem[96]
    mem[stor3[1].field_1 % 128 + 236 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) > mem[96]:
        mem[mem[96] + stor3[1].field_1 % 128 + 236] = 0
    revert with 0, 32, mem[96], mem[stor3[1].field_1 % 128 + 236 len ceil32(mem[96])]
}

function sub_aa1fc051(?) {
    require calldata.size - 4 >= 32
    if storFEAB:
        revert with 0, 'Permission is locked.'
    mem[128] = 'Not authorized. You need the per'
    mem[160] = 0x6d697373696f6e20000000000000000000000000000000000000000000000000
    if bool(stor3[1].field_0):
        if bool(stor3[1].field_0) == uint255(stor3[1].field_0) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor3[1].field_0):
            mem[168] = Mask(248, 8, stor3[1].field_0)
            if stor1[address(msg.sender)][1]:
                sub_1f5f38af = arg1
            if floor32((uint255(stor3[1].field_0) * 0.5) + 71) > (uint255(stor3[1].field_0) * 0.5) + 40:
                revert with 0, 
                            32,
                            (uint255(stor3[1].field_0) * 0.5) + 40,
                            Mask(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len uint255(stor3[1].field_0) * 0.5], 0, Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) - 256,
                            Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) - 256
            revert with 0, 
                        32,
                        (uint255(stor3[1].field_0) * 0.5) + 40,
                        'Not authorized. You need the per',
                        0,
                        mem[168 len uint255(stor3[1].field_0) * 0.5],
                        0,
                        Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256
        if bool(stor3[1].field_0) != 1:
            if not stor1[address(msg.sender)][1]:
                revert with memory
                  from 4294967168, 0
                   len -4294967168, 0 - 60
            sub_1f5f38af = arg1
        idx = 0
        s = 0
        while idx < uint255(stor3[1].field_0) * 0.5:
            mem[idx + 168] = stor3[1][s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        if stor1[address(msg.sender)][1]:
            sub_1f5f38af = arg1
        mem[(uint255(stor3[1].field_0) * 0.5) + 168] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(uint255(stor3[1].field_0) * 0.5) + 172] = 32
        mem[(uint255(stor3[1].field_0) * 0.5) + 204] = mem[96]
        mem[(uint255(stor3[1].field_0) * 0.5) + 236 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) > mem[96]:
            mem[mem[96] + (uint255(stor3[1].field_0) * 0.5) + 236] = 0
        revert with 0, 32, mem[96], mem[(uint255(stor3[1].field_0) * 0.5) + 236 len ceil32(mem[96])]
    if bool(stor3[1].field_0) == stor3[1].field_1 % 128 < 32:
        revert with 0, 34
    if not bool(stor3[1].field_0):
        mem[168] = Mask(248, 8, stor3[1].field_0)
        if stor1[address(msg.sender)][1]:
            sub_1f5f38af = arg1
        mem[stor3[1].field_1 % 128 + 236 len floor32(stor3[1].field_1 % 128 + 71)] = 'Not authorized. You need the per', 0, mem[168 len stor3[1].field_1 % 128], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
        if floor32(stor3[1].field_1 % 128 + 71) <= stor3[1].field_1 % 128 + 40:
            revert with 0, 
                        32,
                        stor3[1].field_1 % 128 + 40,
                        'Not authorized. You need the per',
                        0,
                        mem[168 len stor3[1].field_1 % 128],
                        0,
                        Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
        mem[(2 * stor3[1].field_1 % 128) + 276] = 0
        revert with 0, 
                    32,
                    stor3[1].field_1 % 128 + 40,
                    Mask(8 * stor3[1].field_1 % 128 + 40, -(8 * stor3[1].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len stor3[1].field_1 % 128], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256) << (8 * stor3[1].field_1 % 128 + 40) - 256,
                    mem[(2 * stor3[1].field_1 % 128) + 276 len floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 40]
    if bool(stor3[1].field_0) != 1:
        if not stor1[address(msg.sender)][1]:
            revert with memory
              from 4294967168, 0
               len -4294967168, 0 - 60
        sub_1f5f38af = arg1
    idx = 0
    s = 0
    while idx < stor3[1].field_1 % 128:
        mem[idx + 168] = stor3[1][s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    if stor1[address(msg.sender)][1]:
        sub_1f5f38af = arg1
    mem[stor3[1].field_1 % 128 + 168] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[stor3[1].field_1 % 128 + 172] = 32
    mem[stor3[1].field_1 % 128 + 204] = mem[96]
    mem[stor3[1].field_1 % 128 + 236 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) > mem[96]:
        mem[mem[96] + stor3[1].field_1 % 128 + 236] = 0
    revert with 0, 32, mem[96], mem[stor3[1].field_1 % 128 + 236 len ceil32(mem[96])]
}

function setFeesOnNormalTransfers(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if storFEAB:
        revert with 0, 'Permission is locked.'
    mem[128] = 'Not authorized. You need the per'
    mem[160] = 0x6d697373696f6e20000000000000000000000000000000000000000000000000
    if bool(stor3[1].field_0):
        if bool(stor3[1].field_0) == uint255(stor3[1].field_0) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor3[1].field_0):
            mem[168] = Mask(248, 8, stor3[1].field_0)
            if stor1[address(msg.sender)][1]:
                feesOnNormalTransfers = uint8(arg1)
            if floor32((uint255(stor3[1].field_0) * 0.5) + 71) > (uint255(stor3[1].field_0) * 0.5) + 40:
                revert with 0, 
                            32,
                            (uint255(stor3[1].field_0) * 0.5) + 40,
                            Mask(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len uint255(stor3[1].field_0) * 0.5], 0, Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) - 256,
                            Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) - 256
            revert with 0, 
                        32,
                        (uint255(stor3[1].field_0) * 0.5) + 40,
                        'Not authorized. You need the per',
                        0,
                        mem[168 len uint255(stor3[1].field_0) * 0.5],
                        0,
                        Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256
        if bool(stor3[1].field_0) != 1:
            if not stor1[address(msg.sender)][1]:
                revert with memory
                  from 4294967168, 0
                   len -4294967168, 0 - 60
            feesOnNormalTransfers = uint8(arg1)
        idx = 0
        s = 0
        while idx < uint255(stor3[1].field_0) * 0.5:
            mem[idx + 168] = stor3[1][s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        if stor1[address(msg.sender)][1]:
            feesOnNormalTransfers = uint8(arg1)
        mem[(uint255(stor3[1].field_0) * 0.5) + 168] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(uint255(stor3[1].field_0) * 0.5) + 172] = 32
        mem[(uint255(stor3[1].field_0) * 0.5) + 204] = mem[96]
        mem[(uint255(stor3[1].field_0) * 0.5) + 236 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) > mem[96]:
            mem[mem[96] + (uint255(stor3[1].field_0) * 0.5) + 236] = 0
        revert with 0, 32, mem[96], mem[(uint255(stor3[1].field_0) * 0.5) + 236 len ceil32(mem[96])]
    if bool(stor3[1].field_0) == stor3[1].field_1 % 128 < 32:
        revert with 0, 34
    if not bool(stor3[1].field_0):
        mem[168] = Mask(248, 8, stor3[1].field_0)
        if stor1[address(msg.sender)][1]:
            feesOnNormalTransfers = uint8(arg1)
        mem[stor3[1].field_1 % 128 + 236 len floor32(stor3[1].field_1 % 128 + 71)] = 'Not authorized. You need the per', 0, mem[168 len stor3[1].field_1 % 128], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
        if floor32(stor3[1].field_1 % 128 + 71) <= stor3[1].field_1 % 128 + 40:
            revert with 0, 
                        32,
                        stor3[1].field_1 % 128 + 40,
                        'Not authorized. You need the per',
                        0,
                        mem[168 len stor3[1].field_1 % 128],
                        0,
                        Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
        mem[(2 * stor3[1].field_1 % 128) + 276] = 0
        revert with 0, 
                    32,
                    stor3[1].field_1 % 128 + 40,
                    Mask(8 * stor3[1].field_1 % 128 + 40, -(8 * stor3[1].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len stor3[1].field_1 % 128], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256) << (8 * stor3[1].field_1 % 128 + 40) - 256,
                    mem[(2 * stor3[1].field_1 % 128) + 276 len floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 40]
    if bool(stor3[1].field_0) != 1:
        if not stor1[address(msg.sender)][1]:
            revert with memory
              from 4294967168, 0
               len -4294967168, 0 - 60
        feesOnNormalTransfers = uint8(arg1)
    idx = 0
    s = 0
    while idx < stor3[1].field_1 % 128:
        mem[idx + 168] = stor3[1][s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    if stor1[address(msg.sender)][1]:
        feesOnNormalTransfers = uint8(arg1)
    mem[stor3[1].field_1 % 128 + 168] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[stor3[1].field_1 % 128 + 172] = 32
    mem[stor3[1].field_1 % 128 + 204] = mem[96]
    mem[stor3[1].field_1 % 128 + 236 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) > mem[96]:
        mem[mem[96] + stor3[1].field_1 % 128 + 236] = 0
    revert with 0, 32, mem[96], mem[stor3[1].field_1 % 128 + 236 len ceil32(mem[96])]
}

function freeze(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if storFEAB:
        revert with 0, 'Permission is locked.'
    mem[128] = 'Not authorized. You need the per'
    mem[160] = 0x6d697373696f6e20000000000000000000000000000000000000000000000000
    if bool(stor3[1].field_0):
        if bool(stor3[1].field_0) == uint255(stor3[1].field_0) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor3[1].field_0):
            mem[168] = Mask(248, 8, stor3[1].field_0)
            if stor1[address(msg.sender)][1]:
                Mask(240, 0, stor28.field_16) = Mask(240, 0, arg1)
            if floor32((uint255(stor3[1].field_0) * 0.5) + 71) > (uint255(stor3[1].field_0) * 0.5) + 40:
                revert with 0, 
                            32,
                            (uint255(stor3[1].field_0) * 0.5) + 40,
                            Mask(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len uint255(stor3[1].field_0) * 0.5], 0, Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) - 256,
                            Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) - 256
            revert with 0, 
                        32,
                        (uint255(stor3[1].field_0) * 0.5) + 40,
                        'Not authorized. You need the per',
                        0,
                        mem[168 len uint255(stor3[1].field_0) * 0.5],
                        0,
                        Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256
        if bool(stor3[1].field_0) != 1:
            if not stor1[address(msg.sender)][1]:
                revert with memory
                  from 4294967168, 0
                   len -4294967168, 0 - 60
            Mask(240, 0, stor28.field_16) = Mask(240, 0, arg1)
        idx = 0
        s = 0
        while idx < uint255(stor3[1].field_0) * 0.5:
            mem[idx + 168] = stor3[1][s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        if stor1[address(msg.sender)][1]:
            Mask(240, 0, stor28.field_16) = Mask(240, 0, arg1)
        mem[(uint255(stor3[1].field_0) * 0.5) + 168] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(uint255(stor3[1].field_0) * 0.5) + 172] = 32
        mem[(uint255(stor3[1].field_0) * 0.5) + 204] = mem[96]
        mem[(uint255(stor3[1].field_0) * 0.5) + 236 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) > mem[96]:
            mem[mem[96] + (uint255(stor3[1].field_0) * 0.5) + 236] = 0
        revert with 0, 32, mem[96], mem[(uint255(stor3[1].field_0) * 0.5) + 236 len ceil32(mem[96])]
    if bool(stor3[1].field_0) == stor3[1].field_1 % 128 < 32:
        revert with 0, 34
    if not bool(stor3[1].field_0):
        mem[168] = Mask(248, 8, stor3[1].field_0)
        if stor1[address(msg.sender)][1]:
            Mask(240, 0, stor28.field_16) = Mask(240, 0, arg1)
        mem[stor3[1].field_1 % 128 + 236 len floor32(stor3[1].field_1 % 128 + 71)] = 'Not authorized. You need the per', 0, mem[168 len stor3[1].field_1 % 128], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
        if floor32(stor3[1].field_1 % 128 + 71) <= stor3[1].field_1 % 128 + 40:
            revert with 0, 
                        32,
                        stor3[1].field_1 % 128 + 40,
                        'Not authorized. You need the per',
                        0,
                        mem[168 len stor3[1].field_1 % 128],
                        0,
                        Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
        mem[(2 * stor3[1].field_1 % 128) + 276] = 0
        revert with 0, 
                    32,
                    stor3[1].field_1 % 128 + 40,
                    Mask(8 * stor3[1].field_1 % 128 + 40, -(8 * stor3[1].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len stor3[1].field_1 % 128], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256) << (8 * stor3[1].field_1 % 128 + 40) - 256,
                    mem[(2 * stor3[1].field_1 % 128) + 276 len floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 40]
    if bool(stor3[1].field_0) != 1:
        if not stor1[address(msg.sender)][1]:
            revert with memory
              from 4294967168, 0
               len -4294967168, 0 - 60
        Mask(240, 0, stor28.field_16) = Mask(240, 0, arg1)
    idx = 0
    s = 0
    while idx < stor3[1].field_1 % 128:
        mem[idx + 168] = stor3[1][s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    if stor1[address(msg.sender)][1]:
        Mask(240, 0, stor28.field_16) = Mask(240, 0, arg1)
    mem[stor3[1].field_1 % 128 + 168] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[stor3[1].field_1 % 128 + 172] = 32
    mem[stor3[1].field_1 % 128 + 204] = mem[96]
    mem[stor3[1].field_1 % 128 + 236 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) > mem[96]:
        mem[mem[96] + stor3[1].field_1 % 128 + 236] = 0
    revert with 0, 32, mem[96], mem[stor3[1].field_1 % 128 + 236 len ceil32(mem[96])]
}

function setLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if storFEAB:
        revert with 0, 'Permission is locked.'
    mem[128] = 'Not authorized. You need the per'
    mem[160] = 0x6d697373696f6e20000000000000000000000000000000000000000000000000
    if bool(stor3[1].field_0):
        if bool(stor3[1].field_0) == uint255(stor3[1].field_0) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor3[1].field_0):
            mem[168] = Mask(248, 8, stor3[1].field_0)
            if stor1[address(msg.sender)][1]:
                Mask(248, 0, stor28.field_8) = Mask(248, 0, arg1)
            if floor32((uint255(stor3[1].field_0) * 0.5) + 71) > (uint255(stor3[1].field_0) * 0.5) + 40:
                revert with 0, 
                            32,
                            (uint255(stor3[1].field_0) * 0.5) + 40,
                            Mask(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len uint255(stor3[1].field_0) * 0.5], 0, Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) - 256,
                            Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) - 256
            revert with 0, 
                        32,
                        (uint255(stor3[1].field_0) * 0.5) + 40,
                        'Not authorized. You need the per',
                        0,
                        mem[168 len uint255(stor3[1].field_0) * 0.5],
                        0,
                        Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256
        if bool(stor3[1].field_0) != 1:
            if not stor1[address(msg.sender)][1]:
                revert with memory
                  from 4294967168, 0
                   len -4294967168, 0 - 60
            Mask(248, 0, stor28.field_8) = Mask(248, 0, arg1)
        idx = 0
        s = 0
        while idx < uint255(stor3[1].field_0) * 0.5:
            mem[idx + 168] = stor3[1][s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        if stor1[address(msg.sender)][1]:
            Mask(248, 0, stor28.field_8) = Mask(248, 0, arg1)
        mem[(uint255(stor3[1].field_0) * 0.5) + 168] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(uint255(stor3[1].field_0) * 0.5) + 172] = 32
        mem[(uint255(stor3[1].field_0) * 0.5) + 204] = mem[96]
        mem[(uint255(stor3[1].field_0) * 0.5) + 236 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) > mem[96]:
            mem[mem[96] + (uint255(stor3[1].field_0) * 0.5) + 236] = 0
        revert with 0, 32, mem[96], mem[(uint255(stor3[1].field_0) * 0.5) + 236 len ceil32(mem[96])]
    if bool(stor3[1].field_0) == stor3[1].field_1 % 128 < 32:
        revert with 0, 34
    if not bool(stor3[1].field_0):
        mem[168] = Mask(248, 8, stor3[1].field_0)
        if stor1[address(msg.sender)][1]:
            Mask(248, 0, stor28.field_8) = Mask(248, 0, arg1)
        mem[stor3[1].field_1 % 128 + 236 len floor32(stor3[1].field_1 % 128 + 71)] = 'Not authorized. You need the per', 0, mem[168 len stor3[1].field_1 % 128], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
        if floor32(stor3[1].field_1 % 128 + 71) <= stor3[1].field_1 % 128 + 40:
            revert with 0, 
                        32,
                        stor3[1].field_1 % 128 + 40,
                        'Not authorized. You need the per',
                        0,
                        mem[168 len stor3[1].field_1 % 128],
                        0,
                        Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
        mem[(2 * stor3[1].field_1 % 128) + 276] = 0
        revert with 0, 
                    32,
                    stor3[1].field_1 % 128 + 40,
                    Mask(8 * stor3[1].field_1 % 128 + 40, -(8 * stor3[1].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len stor3[1].field_1 % 128], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256) << (8 * stor3[1].field_1 % 128 + 40) - 256,
                    mem[(2 * stor3[1].field_1 % 128) + 276 len floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 40]
    if bool(stor3[1].field_0) != 1:
        if not stor1[address(msg.sender)][1]:
            revert with memory
              from 4294967168, 0
               len -4294967168, 0 - 60
        Mask(248, 0, stor28.field_8) = Mask(248, 0, arg1)
    idx = 0
    s = 0
    while idx < stor3[1].field_1 % 128:
        mem[idx + 168] = stor3[1][s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    if stor1[address(msg.sender)][1]:
        Mask(248, 0, stor28.field_8) = Mask(248, 0, arg1)
    mem[stor3[1].field_1 % 128 + 168] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[stor3[1].field_1 % 128 + 172] = 32
    mem[stor3[1].field_1 % 128 + 204] = mem[96]
    mem[stor3[1].field_1 % 128 + 236 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) > mem[96]:
        mem[mem[96] + stor3[1].field_1 % 128 + 236] = 0
    revert with 0, 32, mem[96], mem[stor3[1].field_1 % 128 + 236 len ceil32(mem[96])]
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if storFEAB:
        revert with 0, 'Permission is locked.'
    mem[128] = 'Not authorized. You need the per'
    mem[160] = 0x6d697373696f6e20000000000000000000000000000000000000000000000000
    if bool(stor3[1].field_0):
        if bool(stor3[1].field_0) == uint255(stor3[1].field_0) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor3[1].field_0):
            mem[168] = Mask(248, 8, stor3[1].field_0)
            if not stor1[address(msg.sender)][1]:
                if floor32((uint255(stor3[1].field_0) * 0.5) + 71) > (uint255(stor3[1].field_0) * 0.5) + 40:
                    revert with 0, 
                                32,
                                (uint255(stor3[1].field_0) * 0.5) + 40,
                                Mask(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len uint255(stor3[1].field_0) * 0.5], 0, Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) - 256,
                                Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) - 256
                revert with 0, 
                            32,
                            (uint255(stor3[1].field_0) * 0.5) + 40,
                            'Not authorized. You need the per',
                            0,
                            mem[168 len uint255(stor3[1].field_0) * 0.5],
                            0,
                            Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256
            require arg1 <= 10^6
            stor29 = arg1
        if bool(stor3[1].field_0) != 1:
            if not stor1[address(msg.sender)][1]:
                revert with memory
                  from 4294967168, 0
                   len -4294967168, 0 - 60
            require arg1 <= 10^6
            stor29 = arg1
        idx = 0
        s = 0
        while idx < uint255(stor3[1].field_0) * 0.5:
            mem[idx + 168] = stor3[1][s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        if stor1[address(msg.sender)][1]:
            require arg1 <= 10^6
            stor29 = arg1
        mem[(uint255(stor3[1].field_0) * 0.5) + 168] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(uint255(stor3[1].field_0) * 0.5) + 172] = 32
        mem[(uint255(stor3[1].field_0) * 0.5) + 204] = mem[96]
        mem[(uint255(stor3[1].field_0) * 0.5) + 236 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) > mem[96]:
            mem[mem[96] + (uint255(stor3[1].field_0) * 0.5) + 236] = 0
        revert with 0, 32, mem[96], mem[(uint255(stor3[1].field_0) * 0.5) + 236 len ceil32(mem[96])]
    if bool(stor3[1].field_0) == stor3[1].field_1 % 128 < 32:
        revert with 0, 34
    if not bool(stor3[1].field_0):
        mem[168] = Mask(248, 8, stor3[1].field_0)
        if stor1[address(msg.sender)][1]:
            require arg1 <= 10^6
            stor29 = arg1
        mem[stor3[1].field_1 % 128 + 236 len floor32(stor3[1].field_1 % 128 + 71)] = 'Not authorized. You need the per', 0, mem[168 len stor3[1].field_1 % 128], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
        if floor32(stor3[1].field_1 % 128 + 71) <= stor3[1].field_1 % 128 + 40:
            revert with 0, 
                        32,
                        stor3[1].field_1 % 128 + 40,
                        'Not authorized. You need the per',
                        0,
                        mem[168 len stor3[1].field_1 % 128],
                        0,
                        Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
        mem[(2 * stor3[1].field_1 % 128) + 276] = 0
        revert with 0, 
                    32,
                    stor3[1].field_1 % 128 + 40,
                    Mask(8 * stor3[1].field_1 % 128 + 40, -(8 * stor3[1].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len stor3[1].field_1 % 128], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256) << (8 * stor3[1].field_1 % 128 + 40) - 256,
                    mem[(2 * stor3[1].field_1 % 128) + 276 len floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 40]
    if bool(stor3[1].field_0) != 1:
        if not stor1[address(msg.sender)][1]:
            revert with memory
              from 4294967168, 0
               len -4294967168, 0 - 60
        require arg1 <= 10^6
        stor29 = arg1
    idx = 0
    s = 0
    while idx < stor3[1].field_1 % 128:
        mem[idx + 168] = stor3[1][s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    if stor1[address(msg.sender)][1]:
        require arg1 <= 10^6
        stor29 = arg1
    mem[stor3[1].field_1 % 128 + 168] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[stor3[1].field_1 % 128 + 172] = 32
    mem[stor3[1].field_1 % 128 + 204] = mem[96]
    mem[stor3[1].field_1 % 128 + 236 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) > mem[96]:
        mem[mem[96] + stor3[1].field_1 % 128 + 236] = 0
    revert with 0, 32, mem[96], mem[stor3[1].field_1 % 128 + 236 len ceil32(mem[96])]
}

function addPair(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if storFEAB:
        revert with 0, 'Permission is locked.'
    mem[128] = 'Not authorized. You need the per'
    mem[160] = 0x6d697373696f6e20000000000000000000000000000000000000000000000000
    if bool(stor3[1].field_0):
        if bool(stor3[1].field_0) == uint255(stor3[1].field_0) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor3[1].field_0):
            mem[168] = Mask(248, 8, stor3[1].field_0)
            if not stor1[address(msg.sender)][1]:
                if floor32((uint255(stor3[1].field_0) * 0.5) + 71) > (uint255(stor3[1].field_0) * 0.5) + 40:
                    revert with 0, 
                                32,
                                (uint255(stor3[1].field_0) * 0.5) + 40,
                                Mask(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len uint255(stor3[1].field_0) * 0.5], 0, Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) - 256,
                                Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) - 256
                revert with 0, 
                            32,
                            (uint255(stor3[1].field_0) * 0.5) + 40,
                            'Not authorized. You need the per',
                            0,
                            mem[168 len uint255(stor3[1].field_0) * 0.5],
                            0,
                            Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256
            pairs.length++
            stor57C3[stor26.length] = arg1
        if bool(stor3[1].field_0) != 1:
            if not stor1[address(msg.sender)][1]:
                revert with memory
                  from 4294967168, 0
                   len -4294967168, 0 - 60
            pairs.length++
            stor57C3[stor26.length] = arg1
        idx = 0
        s = 0
        while idx < uint255(stor3[1].field_0) * 0.5:
            mem[idx + 168] = stor3[1][s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        if stor1[address(msg.sender)][1]:
            pairs.length++
            stor57C3[stor26.length] = arg1
        mem[(uint255(stor3[1].field_0) * 0.5) + 168] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(uint255(stor3[1].field_0) * 0.5) + 172] = 32
        mem[(uint255(stor3[1].field_0) * 0.5) + 204] = mem[96]
        mem[(uint255(stor3[1].field_0) * 0.5) + 236 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) > mem[96]:
            mem[mem[96] + (uint255(stor3[1].field_0) * 0.5) + 236] = 0
        revert with 0, 32, mem[96], mem[(uint255(stor3[1].field_0) * 0.5) + 236 len ceil32(mem[96])]
    if bool(stor3[1].field_0) == stor3[1].field_1 % 128 < 32:
        revert with 0, 34
    if not bool(stor3[1].field_0):
        mem[168] = Mask(248, 8, stor3[1].field_0)
        if stor1[address(msg.sender)][1]:
            pairs.length++
            stor57C3[stor26.length] = arg1
        mem[stor3[1].field_1 % 128 + 236 len floor32(stor3[1].field_1 % 128 + 71)] = 'Not authorized. You need the per', 0, mem[168 len stor3[1].field_1 % 128], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
        if floor32(stor3[1].field_1 % 128 + 71) <= stor3[1].field_1 % 128 + 40:
            revert with 0, 
                        32,
                        stor3[1].field_1 % 128 + 40,
                        'Not authorized. You need the per',
                        0,
                        mem[168 len stor3[1].field_1 % 128],
                        0,
                        Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
        mem[(2 * stor3[1].field_1 % 128) + 276] = 0
        revert with 0, 
                    32,
                    stor3[1].field_1 % 128 + 40,
                    Mask(8 * stor3[1].field_1 % 128 + 40, -(8 * stor3[1].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len stor3[1].field_1 % 128], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256) << (8 * stor3[1].field_1 % 128 + 40) - 256,
                    mem[(2 * stor3[1].field_1 % 128) + 276 len floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 40]
    if bool(stor3[1].field_0) != 1:
        if not stor1[address(msg.sender)][1]:
            revert with memory
              from 4294967168, 0
               len -4294967168, 0 - 60
        pairs.length++
        stor57C3[stor26.length] = arg1
    idx = 0
    s = 0
    while idx < stor3[1].field_1 % 128:
        mem[idx + 168] = stor3[1][s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    if stor1[address(msg.sender)][1]:
        pairs.length++
        stor57C3[stor26.length] = arg1
    mem[stor3[1].field_1 % 128 + 168] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[stor3[1].field_1 % 128 + 172] = 32
    mem[stor3[1].field_1 % 128 + 204] = mem[96]
    mem[stor3[1].field_1 % 128 + 236 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) > mem[96]:
        mem[mem[96] + stor3[1].field_1 % 128 + 236] = 0
    revert with 0, 32, mem[96], mem[stor3[1].field_1 % 128 + 236 len ceil32(mem[96])]
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if storFEAB:
        revert with 0, 'Permission is locked.'
    mem[128] = 'Not authorized. You need the per'
    mem[160] = 0x6d697373696f6e20000000000000000000000000000000000000000000000000
    if bool(stor3[1].field_0):
        if bool(stor3[1].field_0) == uint255(stor3[1].field_0) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor3[1].field_0):
            mem[168] = Mask(248, 8, stor3[1].field_0)
            if not stor1[address(msg.sender)][1]:
                if floor32((uint255(stor3[1].field_0) * 0.5) + 71) > (uint255(stor3[1].field_0) * 0.5) + 40:
                    revert with 0, 
                                32,
                                (uint255(stor3[1].field_0) * 0.5) + 40,
                                Mask(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len uint255(stor3[1].field_0) * 0.5], 0, Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) - 256,
                                Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) - 256
                revert with 0, 
                            32,
                            (uint255(stor3[1].field_0) * 0.5) + 40,
                            'Not authorized. You need the per',
                            0,
                            mem[168 len uint255(stor3[1].field_0) * 0.5],
                            0,
                            Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256
            swapEnabled = uint8(arg1)
            swapThreshold = arg2
        if bool(stor3[1].field_0) != 1:
            if not stor1[address(msg.sender)][1]:
                revert with memory
                  from 4294967168, 0
                   len -4294967168, 0 - 60
            swapEnabled = uint8(arg1)
            swapThreshold = arg2
        idx = 0
        s = 0
        while idx < uint255(stor3[1].field_0) * 0.5:
            mem[idx + 168] = stor3[1][s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        if stor1[address(msg.sender)][1]:
            swapEnabled = uint8(arg1)
            swapThreshold = arg2
        mem[(uint255(stor3[1].field_0) * 0.5) + 168] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(uint255(stor3[1].field_0) * 0.5) + 172] = 32
        mem[(uint255(stor3[1].field_0) * 0.5) + 204] = mem[96]
        mem[(uint255(stor3[1].field_0) * 0.5) + 236 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) > mem[96]:
            mem[mem[96] + (uint255(stor3[1].field_0) * 0.5) + 236] = 0
        revert with 0, 32, mem[96], mem[(uint255(stor3[1].field_0) * 0.5) + 236 len ceil32(mem[96])]
    if bool(stor3[1].field_0) == stor3[1].field_1 % 128 < 32:
        revert with 0, 34
    if not bool(stor3[1].field_0):
        mem[168] = Mask(248, 8, stor3[1].field_0)
        if stor1[address(msg.sender)][1]:
            swapEnabled = uint8(arg1)
            swapThreshold = arg2
        mem[stor3[1].field_1 % 128 + 236 len floor32(stor3[1].field_1 % 128 + 71)] = 'Not authorized. You need the per', 0, mem[168 len stor3[1].field_1 % 128], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
        if floor32(stor3[1].field_1 % 128 + 71) <= stor3[1].field_1 % 128 + 40:
            revert with 0, 
                        32,
                        stor3[1].field_1 % 128 + 40,
                        'Not authorized. You need the per',
                        0,
                        mem[168 len stor3[1].field_1 % 128],
                        0,
                        Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
        mem[(2 * stor3[1].field_1 % 128) + 276] = 0
        revert with 0, 
                    32,
                    stor3[1].field_1 % 128 + 40,
                    Mask(8 * stor3[1].field_1 % 128 + 40, -(8 * stor3[1].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len stor3[1].field_1 % 128], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256) << (8 * stor3[1].field_1 % 128 + 40) - 256,
                    mem[(2 * stor3[1].field_1 % 128) + 276 len floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 40]
    if bool(stor3[1].field_0) != 1:
        if not stor1[address(msg.sender)][1]:
            revert with memory
              from 4294967168, 0
               len -4294967168, 0 - 60
        swapEnabled = uint8(arg1)
        swapThreshold = arg2
    idx = 0
    s = 0
    while idx < stor3[1].field_1 % 128:
        mem[idx + 168] = stor3[1][s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    if stor1[address(msg.sender)][1]:
        swapEnabled = uint8(arg1)
        swapThreshold = arg2
    mem[stor3[1].field_1 % 128 + 168] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[stor3[1].field_1 % 128 + 172] = 32
    mem[stor3[1].field_1 % 128 + 204] = mem[96]
    mem[stor3[1].field_1 % 128 + 236 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) > mem[96]:
        mem[mem[96] + stor3[1].field_1 % 128 + 236] = 0
    revert with 0, 32, mem[96], mem[stor3[1].field_1 % 128 + 236 len ceil32(mem[96])]
}

function setFeeReceivers(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if storFEAB:
        revert with 0, 'Permission is locked.'
    mem[128] = 'Not authorized. You need the per'
    mem[160] = 0x6d697373696f6e20000000000000000000000000000000000000000000000000
    if bool(stor3[1].field_0):
        if bool(stor3[1].field_0) == uint255(stor3[1].field_0) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor3[1].field_0):
            mem[168] = Mask(248, 8, stor3[1].field_0)
            if not stor1[address(msg.sender)][1]:
                if floor32((uint255(stor3[1].field_0) * 0.5) + 71) > (uint255(stor3[1].field_0) * 0.5) + 40:
                    revert with 0, 
                                32,
                                (uint255(stor3[1].field_0) * 0.5) + 40,
                                Mask(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len uint255(stor3[1].field_0) * 0.5], 0, Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) - 256,
                                Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) - 256
                revert with 0, 
                            32,
                            (uint255(stor3[1].field_0) * 0.5) + 40,
                            'Not authorized. You need the per',
                            0,
                            mem[168 len uint255(stor3[1].field_0) * 0.5],
                            0,
                            Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256
            autoLiquidityReceiverAddress = arg1
            sub_78e29cb6Address = arg2
        if bool(stor3[1].field_0) != 1:
            if not stor1[address(msg.sender)][1]:
                revert with memory
                  from 4294967168, 0
                   len -4294967168, 0 - 60
            autoLiquidityReceiverAddress = arg1
            sub_78e29cb6Address = arg2
        idx = 0
        s = 0
        while idx < uint255(stor3[1].field_0) * 0.5:
            mem[idx + 168] = stor3[1][s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        if stor1[address(msg.sender)][1]:
            autoLiquidityReceiverAddress = arg1
            sub_78e29cb6Address = arg2
        mem[(uint255(stor3[1].field_0) * 0.5) + 168] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(uint255(stor3[1].field_0) * 0.5) + 172] = 32
        mem[(uint255(stor3[1].field_0) * 0.5) + 204] = mem[96]
        mem[(uint255(stor3[1].field_0) * 0.5) + 236 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) > mem[96]:
            mem[mem[96] + (uint255(stor3[1].field_0) * 0.5) + 236] = 0
        revert with 0, 32, mem[96], mem[(uint255(stor3[1].field_0) * 0.5) + 236 len ceil32(mem[96])]
    if bool(stor3[1].field_0) == stor3[1].field_1 % 128 < 32:
        revert with 0, 34
    if not bool(stor3[1].field_0):
        mem[168] = Mask(248, 8, stor3[1].field_0)
        if stor1[address(msg.sender)][1]:
            autoLiquidityReceiverAddress = arg1
            sub_78e29cb6Address = arg2
        mem[stor3[1].field_1 % 128 + 236 len floor32(stor3[1].field_1 % 128 + 71)] = 'Not authorized. You need the per', 0, mem[168 len stor3[1].field_1 % 128], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
        if floor32(stor3[1].field_1 % 128 + 71) <= stor3[1].field_1 % 128 + 40:
            revert with 0, 
                        32,
                        stor3[1].field_1 % 128 + 40,
                        'Not authorized. You need the per',
                        0,
                        mem[168 len stor3[1].field_1 % 128],
                        0,
                        Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
        mem[(2 * stor3[1].field_1 % 128) + 276] = 0
        revert with 0, 
                    32,
                    stor3[1].field_1 % 128 + 40,
                    Mask(8 * stor3[1].field_1 % 128 + 40, -(8 * stor3[1].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len stor3[1].field_1 % 128], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256) << (8 * stor3[1].field_1 % 128 + 40) - 256,
                    mem[(2 * stor3[1].field_1 % 128) + 276 len floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 40]
    if bool(stor3[1].field_0) != 1:
        if not stor1[address(msg.sender)][1]:
            revert with memory
              from 4294967168, 0
               len -4294967168, 0 - 60
        autoLiquidityReceiverAddress = arg1
        sub_78e29cb6Address = arg2
    idx = 0
    s = 0
    while idx < stor3[1].field_1 % 128:
        mem[idx + 168] = stor3[1][s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    if stor1[address(msg.sender)][1]:
        autoLiquidityReceiverAddress = arg1
        sub_78e29cb6Address = arg2
    mem[stor3[1].field_1 % 128 + 168] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[stor3[1].field_1 % 128 + 172] = 32
    mem[stor3[1].field_1 % 128 + 204] = mem[96]
    mem[stor3[1].field_1 % 128 + 236 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) > mem[96]:
        mem[mem[96] + stor3[1].field_1 % 128 + 236] = 0
    revert with 0, 32, mem[96], mem[stor3[1].field_1 % 128 + 236 len ceil32(mem[96])]
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if storFEAB:
        revert with 0, 'Permission is locked.'
    mem[128] = 'Not authorized. You need the per'
    mem[160] = 0x6d697373696f6e20000000000000000000000000000000000000000000000000
    if bool(stor3[1].field_0):
        if bool(stor3[1].field_0) == uint255(stor3[1].field_0) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor3[1].field_0):
            mem[168] = Mask(248, 8, stor3[1].field_0)
            if not stor1[address(msg.sender)][1]:
                if floor32((uint255(stor3[1].field_0) * 0.5) + 71) > (uint255(stor3[1].field_0) * 0.5) + 40:
                    revert with 0, 
                                32,
                                (uint255(stor3[1].field_0) * 0.5) + 40,
                                Mask(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len uint255(stor3[1].field_0) * 0.5], 0, Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) - 256,
                                Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) - 256
                revert with 0, 
                            32,
                            (uint255(stor3[1].field_0) * 0.5) + 40,
                            'Not authorized. You need the per',
                            0,
                            mem[168 len uint255(stor3[1].field_0) * 0.5],
                            0,
                            Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256
            require ext_code.size(address(stor28.field_24))
            call address(stor28.field_24).0x2d48e896 with:
                 gas gas_remaining wei
                args arg1, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if bool(stor3[1].field_0) != 1:
            if not stor1[address(msg.sender)][1]:
                revert with memory
                  from 4294967168, 0
                   len -4294967168, 0 - 60
            require ext_code.size(address(stor28.field_24))
            call address(stor28.field_24).0x2d48e896 with:
                 gas gas_remaining wei
                args 0, uint32(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        s = 0
        while idx < uint255(stor3[1].field_0) * 0.5:
            mem[idx + 168] = stor3[1][s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        if stor1[address(msg.sender)][1]:
            require ext_code.size(address(stor28.field_24))
            call address(stor28.field_24).0x2d48e896 with:
                 gas gas_remaining wei
                args arg1, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(uint255(stor3[1].field_0) * 0.5) + 168] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(uint255(stor3[1].field_0) * 0.5) + 172] = 32
        mem[(uint255(stor3[1].field_0) * 0.5) + 204] = mem[96]
        mem[(uint255(stor3[1].field_0) * 0.5) + 236 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) > mem[96]:
            mem[mem[96] + (uint255(stor3[1].field_0) * 0.5) + 236] = 0
        revert with 0, 32, mem[96], mem[(uint255(stor3[1].field_0) * 0.5) + 236 len ceil32(mem[96])]
    if bool(stor3[1].field_0) == stor3[1].field_1 % 128 < 32:
        revert with 0, 34
    if not bool(stor3[1].field_0):
        mem[168] = Mask(248, 8, stor3[1].field_0)
        if stor1[address(msg.sender)][1]:
            require ext_code.size(address(stor28.field_24))
            call address(stor28.field_24).0x2d48e896 with:
                 gas gas_remaining wei
                args arg1, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[stor3[1].field_1 % 128 + 236 len floor32(stor3[1].field_1 % 128 + 71)] = 'Not authorized. You need the per', 0, mem[168 len stor3[1].field_1 % 128], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
        if floor32(stor3[1].field_1 % 128 + 71) <= stor3[1].field_1 % 128 + 40:
            revert with 0, 
                        32,
                        stor3[1].field_1 % 128 + 40,
                        'Not authorized. You need the per',
                        0,
                        mem[168 len stor3[1].field_1 % 128],
                        0,
                        Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
        mem[(2 * stor3[1].field_1 % 128) + 276] = 0
        revert with 0, 
                    32,
                    stor3[1].field_1 % 128 + 40,
                    Mask(8 * stor3[1].field_1 % 128 + 40, -(8 * stor3[1].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len stor3[1].field_1 % 128], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256) << (8 * stor3[1].field_1 % 128 + 40) - 256,
                    mem[(2 * stor3[1].field_1 % 128) + 276 len floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 40]
    if bool(stor3[1].field_0) != 1:
        if not stor1[address(msg.sender)][1]:
            revert with memory
              from 4294967168, 0
               len -4294967168, 0 - 60
        require ext_code.size(address(stor28.field_24))
        call address(stor28.field_24).0x2d48e896 with:
             gas gas_remaining wei
            args 0, uint32(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    s = 0
    while idx < stor3[1].field_1 % 128:
        mem[idx + 168] = stor3[1][s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    if stor1[address(msg.sender)][1]:
        require ext_code.size(address(stor28.field_24))
        call address(stor28.field_24).0x2d48e896 with:
             gas gas_remaining wei
            args arg1, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[stor3[1].field_1 % 128 + 168] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[stor3[1].field_1 % 128 + 172] = 32
    mem[stor3[1].field_1 % 128 + 204] = mem[96]
    mem[stor3[1].field_1 % 128 + 236 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) > mem[96]:
        mem[mem[96] + stor3[1].field_1 % 128 + 236] = 0
    revert with 0, 32, mem[96], mem[stor3[1].field_1 % 128 + 236 len ceil32(mem[96])]
}

function sub_3ee548fd(?) {
    if storFEAB:
        revert with 0, 'Permission is locked.'
    mem[128] = 'Not authorized. You need the per'
    mem[160] = 0x6d697373696f6e20000000000000000000000000000000000000000000000000
    if bool(stor3[1].field_0):
        if bool(stor3[1].field_0) == uint255(stor3[1].field_0) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor3[1].field_0):
            mem[168] = Mask(248, 8, stor3[1].field_0)
            if not stor1[address(msg.sender)][1]:
                if floor32((uint255(stor3[1].field_0) * 0.5) + 71) > (uint255(stor3[1].field_0) * 0.5) + 40:
                    revert with 0, 
                                32,
                                (uint255(stor3[1].field_0) * 0.5) + 40,
                                Mask(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len uint255(stor3[1].field_0) * 0.5], 0, Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) - 256,
                                Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) - 256
                revert with 0, 
                            32,
                            (uint255(stor3[1].field_0) * 0.5) + 40,
                            'Not authorized. You need the per',
                            0,
                            mem[168 len uint255(stor3[1].field_0) * 0.5],
                            0,
                            Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256
            require ext_code.size(stor5)
            staticcall stor5.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
        else:
            if bool(stor3[1].field_0) != 1:
                if not stor1[address(msg.sender)][1]:
                    revert with memory
                      from 4294967168, 0
                       len -4294967168, 0 - 60
                require ext_code.size(stor5)
                staticcall stor5.0x70a08231 with:
                        gas gas_remaining wei
                       args 0, uint32(this.address)
            else:
                idx = 0
                s = 0
                while idx < uint255(stor3[1].field_0) * 0.5:
                    mem[idx + 168] = stor3[1][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if not stor1[address(msg.sender)][1]:
                    mem[(uint255(stor3[1].field_0) * 0.5) + 168] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(uint255(stor3[1].field_0) * 0.5) + 172] = 32
                    mem[(uint255(stor3[1].field_0) * 0.5) + 204] = mem[96]
                    mem[(uint255(stor3[1].field_0) * 0.5) + 236 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(mem[96]) > mem[96]:
                        mem[mem[96] + (uint255(stor3[1].field_0) * 0.5) + 236] = 0
                    revert with 0, 32, mem[96], mem[(uint255(stor3[1].field_0) * 0.5) + 236 len ceil32(mem[96])]
                require ext_code.size(stor5)
                staticcall stor5.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
    else:
        if bool(stor3[1].field_0) == stor3[1].field_1 % 128 < 32:
            revert with 0, 34
        if not bool(stor3[1].field_0):
            mem[168] = Mask(248, 8, stor3[1].field_0)
            if not stor1[address(msg.sender)][1]:
                mem[stor3[1].field_1 % 128 + 236 len floor32(stor3[1].field_1 % 128 + 71)] = 'Not authorized. You need the per', 0, mem[168 len stor3[1].field_1 % 128], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
                if floor32(stor3[1].field_1 % 128 + 71) <= stor3[1].field_1 % 128 + 40:
                    revert with 0, 
                                32,
                                stor3[1].field_1 % 128 + 40,
                                'Not authorized. You need the per',
                                0,
                                mem[168 len stor3[1].field_1 % 128],
                                0,
                                Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
                mem[(2 * stor3[1].field_1 % 128) + 276] = 0
                revert with 0, 
                            32,
                            stor3[1].field_1 % 128 + 40,
                            Mask(8 * stor3[1].field_1 % 128 + 40, -(8 * stor3[1].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len stor3[1].field_1 % 128], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256) << (8 * stor3[1].field_1 % 128 + 40) - 256,
                            mem[(2 * stor3[1].field_1 % 128) + 276 len floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 40]
            require ext_code.size(stor5)
            staticcall stor5.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
        else:
            if bool(stor3[1].field_0) != 1:
                if not stor1[address(msg.sender)][1]:
                    revert with memory
                      from 4294967168, 0
                       len -4294967168, 0 - 60
                require ext_code.size(stor5)
                staticcall stor5.0x70a08231 with:
                        gas gas_remaining wei
                       args 0, uint32(this.address)
            else:
                idx = 0
                s = 0
                while idx < stor3[1].field_1 % 128:
                    mem[idx + 168] = stor3[1][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if not stor1[address(msg.sender)][1]:
                    mem[stor3[1].field_1 % 128 + 168] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[stor3[1].field_1 % 128 + 172] = 32
                    mem[stor3[1].field_1 % 128 + 204] = mem[96]
                    mem[stor3[1].field_1 % 128 + 236 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(mem[96]) > mem[96]:
                        mem[mem[96] + stor3[1].field_1 % 128 + 236] = 0
                    revert with 0, 32, mem[96], mem[stor3[1].field_1 % 128 + 236 len ceil32(mem[96])]
                require ext_code.size(stor5)
                staticcall stor5.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_1f5f38af > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if ext_call.return_data[0] < sub_1f5f38af:
        revert with 0, 17
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
         gas gas_remaining wei
        args address(stor28.field_0), ext_call.return_data[0] - sub_1f5f38af
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(stor28.field_24))
    call address(stor28.field_24).depositBUSD(uint256 arg1) with:
         gas gas_remaining wei
        args (ext_call.return_data[0] - sub_1f5f38af)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if storBEB3:
        revert with 0, 'Permission is locked.'
    mem[160] = 0x6d697373696f6e20000000000000000000000000000000000000000000000000
    if bool(stor3[7].field_0):
        if bool(stor3[7].field_0) == uint255(stor3[7].field_0) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor3[7].field_0):
            mem[168] = Mask(248, 8, stor3[7].field_0)
            if stor1[address(msg.sender)][7]:
                stor13[address(arg1)] = uint8(arg2)
            if floor32((uint255(stor3[7].field_0) * 0.5) + 71) > (uint255(stor3[7].field_0) * 0.5) + 40:
                revert with 0, 
                            32,
                            (uint255(stor3[7].field_0) * 0.5) + 40,
                            Mask(8 * Mask(254, 1, stor3[7].field_0) + -(uint255(stor3[7].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[7].field_0) + -(uint255(stor3[7].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len uint255(stor3[7].field_0) * 0.5], 0, Mask(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[7].field_0) + -(uint255(stor3[7].field_0) * 0.5) + 40) - 256,
                            Mask(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + (uint255(stor3[7].field_0) * 0.5) + -Mask(254, 1, stor3[7].field_0) - 40, -(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + (uint255(stor3[7].field_0) * 0.5) + -Mask(254, 1, stor3[7].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + (uint255(stor3[7].field_0) * 0.5) + -Mask(254, 1, stor3[7].field_0) - 40) - 256
            revert with 0, 
                        32,
                        (uint255(stor3[7].field_0) * 0.5) + 40,
                        'Not authorized. You need the per',
                        0,
                        mem[168 len uint255(stor3[7].field_0) * 0.5],
                        0,
                        Mask(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44) - 256
        if bool(stor3[7].field_0) != 1:
            if not stor1[address(msg.sender)][7]:
                revert with memory
                  from 4294967168, 0
                   len -4294967168, 0 - 60
            stor13[address(arg1)] = uint8(arg2)
        idx = 0
        s = 0
        while idx < uint255(stor3[7].field_0) * 0.5:
            mem[idx + 168] = stor3[7][s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        if stor1[address(msg.sender)][7]:
            stor13[address(arg1)] = uint8(arg2)
        if floor32((uint255(stor3[7].field_0) * 0.5) + 71) > (uint255(stor3[7].field_0) * 0.5) + 40:
            revert with 0, 
                        32,
                        (uint255(stor3[7].field_0) * 0.5) + 40,
                        Mask(8 * Mask(254, 1, stor3[7].field_0) + -(uint255(stor3[7].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[7].field_0) + -(uint255(stor3[7].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', mem[160 len (uint255(stor3[7].field_0) * 0.5) + 8], 0, Mask(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[7].field_0) + -(uint255(stor3[7].field_0) * 0.5) + 40) - 256,
                        Mask(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + (uint255(stor3[7].field_0) * 0.5) + -Mask(254, 1, stor3[7].field_0) - 40, -(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + (uint255(stor3[7].field_0) * 0.5) + -Mask(254, 1, stor3[7].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + (uint255(stor3[7].field_0) * 0.5) + -Mask(254, 1, stor3[7].field_0) - 40) - 256
        revert with 0, 
                    32,
                    (uint255(stor3[7].field_0) * 0.5) + 40,
                    'Not authorized. You need the per',
                    mem[160 len (uint255(stor3[7].field_0) * 0.5) + 8],
                    0,
                    Mask(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44) - 256
    if bool(stor3[7].field_0) == stor3[7].field_1 % 128 < 32:
        revert with 0, 34
    if not bool(stor3[7].field_0):
        mem[168] = Mask(248, 8, stor3[7].field_0)
        if stor1[address(msg.sender)][7]:
            stor13[address(arg1)] = uint8(arg2)
        mem[stor3[7].field_1 % 128 + 236 len floor32(stor3[7].field_1 % 128 + 71)] = 'Not authorized. You need the per', 0, mem[168 len stor3[7].field_1 % 128], 0, Mask(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44, -(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) - 256
        if floor32(stor3[7].field_1 % 128 + 71) <= stor3[7].field_1 % 128 + 40:
            revert with 0, 
                        32,
                        stor3[7].field_1 % 128 + 40,
                        'Not authorized. You need the per',
                        0,
                        mem[168 len stor3[7].field_1 % 128],
                        0,
                        Mask(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44, -(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) - 256
        mem[(2 * stor3[7].field_1 % 128) + 276] = 0
        revert with 0, 
                    32,
                    stor3[7].field_1 % 128 + 40,
                    Mask(8 * stor3[7].field_1 % 128 + 40, -(8 * stor3[7].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len stor3[7].field_1 % 128], 0, Mask(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44, -(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) - 256) << (8 * stor3[7].field_1 % 128 + 40) - 256,
                    mem[(2 * stor3[7].field_1 % 128) + 276 len floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 40]
    if bool(stor3[7].field_0) != 1:
        if not stor1[address(msg.sender)][7]:
            revert with memory
              from 4294967168, 0
               len -4294967168, 0 - 60
        stor13[address(arg1)] = uint8(arg2)
    idx = 0
    s = 0
    while idx < stor3[7].field_1 % 128:
        mem[idx + 168] = stor3[7][s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    if stor1[address(msg.sender)][7]:
        stor13[address(arg1)] = uint8(arg2)
    mem[stor3[7].field_1 % 128 + 236 len floor32(stor3[7].field_1 % 128 + 71)] = 'Not authorized. You need the per', mem[160 len stor3[7].field_1 % 128 + 8], 0, Mask(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44, -(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) - 256
    if floor32(stor3[7].field_1 % 128 + 71) <= stor3[7].field_1 % 128 + 40:
        revert with 0, 
                    32,
                    stor3[7].field_1 % 128 + 40,
                    'Not authorized. You need the per',
                    mem[160 len stor3[7].field_1 % 128 + 8],
                    0,
                    Mask(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44, -(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) - 256
    mem[(2 * stor3[7].field_1 % 128) + 276] = 0
    revert with 0, 
                32,
                stor3[7].field_1 % 128 + 40,
                Mask(8 * stor3[7].field_1 % 128 + 40, -(8 * stor3[7].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', mem[160 len stor3[7].field_1 % 128 + 8], 0, Mask(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44, -(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) - 256) << (8 * stor3[7].field_1 % 128 + 40) - 256,
                mem[(2 * stor3[7].field_1 % 128) + 276 len floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 40]
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if storBEB3:
        revert with 0, 'Permission is locked.'
    mem[160] = 0x6d697373696f6e20000000000000000000000000000000000000000000000000
    if bool(stor3[7].field_0):
        if bool(stor3[7].field_0) == uint255(stor3[7].field_0) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor3[7].field_0):
            mem[168] = Mask(248, 8, stor3[7].field_0)
            if stor1[address(msg.sender)][7]:
                stor14[address(arg1)] = uint8(arg2)
            if floor32((uint255(stor3[7].field_0) * 0.5) + 71) > (uint255(stor3[7].field_0) * 0.5) + 40:
                revert with 0, 
                            32,
                            (uint255(stor3[7].field_0) * 0.5) + 40,
                            Mask(8 * Mask(254, 1, stor3[7].field_0) + -(uint255(stor3[7].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[7].field_0) + -(uint255(stor3[7].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len uint255(stor3[7].field_0) * 0.5], 0, Mask(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[7].field_0) + -(uint255(stor3[7].field_0) * 0.5) + 40) - 256,
                            Mask(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + (uint255(stor3[7].field_0) * 0.5) + -Mask(254, 1, stor3[7].field_0) - 40, -(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + (uint255(stor3[7].field_0) * 0.5) + -Mask(254, 1, stor3[7].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + (uint255(stor3[7].field_0) * 0.5) + -Mask(254, 1, stor3[7].field_0) - 40) - 256
            revert with 0, 
                        32,
                        (uint255(stor3[7].field_0) * 0.5) + 40,
                        'Not authorized. You need the per',
                        0,
                        mem[168 len uint255(stor3[7].field_0) * 0.5],
                        0,
                        Mask(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44) - 256
        if bool(stor3[7].field_0) != 1:
            if not stor1[address(msg.sender)][7]:
                revert with memory
                  from 4294967168, 0
                   len -4294967168, 0 - 60
            stor14[address(arg1)] = uint8(arg2)
        idx = 0
        s = 0
        while idx < uint255(stor3[7].field_0) * 0.5:
            mem[idx + 168] = stor3[7][s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        if stor1[address(msg.sender)][7]:
            stor14[address(arg1)] = uint8(arg2)
        if floor32((uint255(stor3[7].field_0) * 0.5) + 71) > (uint255(stor3[7].field_0) * 0.5) + 40:
            revert with 0, 
                        32,
                        (uint255(stor3[7].field_0) * 0.5) + 40,
                        Mask(8 * Mask(254, 1, stor3[7].field_0) + -(uint255(stor3[7].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[7].field_0) + -(uint255(stor3[7].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', mem[160 len (uint255(stor3[7].field_0) * 0.5) + 8], 0, Mask(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[7].field_0) + -(uint255(stor3[7].field_0) * 0.5) + 40) - 256,
                        Mask(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + (uint255(stor3[7].field_0) * 0.5) + -Mask(254, 1, stor3[7].field_0) - 40, -(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + (uint255(stor3[7].field_0) * 0.5) + -Mask(254, 1, stor3[7].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + (uint255(stor3[7].field_0) * 0.5) + -Mask(254, 1, stor3[7].field_0) - 40) - 256
        revert with 0, 
                    32,
                    (uint255(stor3[7].field_0) * 0.5) + 40,
                    'Not authorized. You need the per',
                    mem[160 len (uint255(stor3[7].field_0) * 0.5) + 8],
                    0,
                    Mask(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44) - 256
    if bool(stor3[7].field_0) == stor3[7].field_1 % 128 < 32:
        revert with 0, 34
    if not bool(stor3[7].field_0):
        mem[168] = Mask(248, 8, stor3[7].field_0)
        if stor1[address(msg.sender)][7]:
            stor14[address(arg1)] = uint8(arg2)
        mem[stor3[7].field_1 % 128 + 236 len floor32(stor3[7].field_1 % 128 + 71)] = 'Not authorized. You need the per', 0, mem[168 len stor3[7].field_1 % 128], 0, Mask(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44, -(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) - 256
        if floor32(stor3[7].field_1 % 128 + 71) <= stor3[7].field_1 % 128 + 40:
            revert with 0, 
                        32,
                        stor3[7].field_1 % 128 + 40,
                        'Not authorized. You need the per',
                        0,
                        mem[168 len stor3[7].field_1 % 128],
                        0,
                        Mask(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44, -(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) - 256
        mem[(2 * stor3[7].field_1 % 128) + 276] = 0
        revert with 0, 
                    32,
                    stor3[7].field_1 % 128 + 40,
                    Mask(8 * stor3[7].field_1 % 128 + 40, -(8 * stor3[7].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len stor3[7].field_1 % 128], 0, Mask(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44, -(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) - 256) << (8 * stor3[7].field_1 % 128 + 40) - 256,
                    mem[(2 * stor3[7].field_1 % 128) + 276 len floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 40]
    if bool(stor3[7].field_0) != 1:
        if not stor1[address(msg.sender)][7]:
            revert with memory
              from 4294967168, 0
               len -4294967168, 0 - 60
        stor14[address(arg1)] = uint8(arg2)
    idx = 0
    s = 0
    while idx < stor3[7].field_1 % 128:
        mem[idx + 168] = stor3[7][s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    if stor1[address(msg.sender)][7]:
        stor14[address(arg1)] = uint8(arg2)
    mem[stor3[7].field_1 % 128 + 236 len floor32(stor3[7].field_1 % 128 + 71)] = 'Not authorized. You need the per', mem[160 len stor3[7].field_1 % 128 + 8], 0, Mask(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44, -(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) - 256
    if floor32(stor3[7].field_1 % 128 + 71) <= stor3[7].field_1 % 128 + 40:
        revert with 0, 
                    32,
                    stor3[7].field_1 % 128 + 40,
                    'Not authorized. You need the per',
                    mem[160 len stor3[7].field_1 % 128 + 8],
                    0,
                    Mask(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44, -(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) - 256
    mem[(2 * stor3[7].field_1 % 128) + 276] = 0
    revert with 0, 
                32,
                stor3[7].field_1 % 128 + 40,
                Mask(8 * stor3[7].field_1 % 128 + 40, -(8 * stor3[7].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', mem[160 len stor3[7].field_1 % 128 + 8], 0, Mask(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44, -(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) - 256) << (8 * stor3[7].field_1 % 128 + 40) - 256,
                mem[(2 * stor3[7].field_1 % 128) + 276 len floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 40]
}

function removeLastPair() {
    if storFEAB:
        revert with 0, 'Permission is locked.'
    mem[160] = 0x6d697373696f6e20000000000000000000000000000000000000000000000000
    if bool(stor3[1].field_0):
        if bool(stor3[1].field_0) == uint255(stor3[1].field_0) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor3[1].field_0):
            mem[168] = Mask(248, 8, stor3[1].field_0)
            if not stor1[address(msg.sender)][1]:
                if floor32((uint255(stor3[1].field_0) * 0.5) + 71) > (uint255(stor3[1].field_0) * 0.5) + 40:
                    revert with 0, 
                                32,
                                (uint255(stor3[1].field_0) * 0.5) + 40,
                                Mask(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len uint255(stor3[1].field_0) * 0.5], 0, Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) - 256,
                                Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) - 256
                revert with 0, 
                            32,
                            (uint255(stor3[1].field_0) * 0.5) + 40,
                            'Not authorized. You need the per',
                            0,
                            mem[168 len uint255(stor3[1].field_0) * 0.5],
                            0,
                            Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256
        else:
            if bool(stor3[1].field_0) != 1:
                if not stor1[address(msg.sender)][1]:
                    revert with memory
                      from 4294967168, 0
                       len -4294967168, 0 - 60
            else:
                idx = 0
                s = 0
                while idx < uint255(stor3[1].field_0) * 0.5:
                    mem[idx + 168] = stor3[1][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if not stor1[address(msg.sender)][1]:
                    if floor32((uint255(stor3[1].field_0) * 0.5) + 71) > (uint255(stor3[1].field_0) * 0.5) + 40:
                        revert with 0, 
                                    32,
                                    (uint255(stor3[1].field_0) * 0.5) + 40,
                                    Mask(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', mem[160 len (uint255(stor3[1].field_0) * 0.5) + 8], 0, Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) - 256,
                                    Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) - 256
                    revert with 0, 
                                32,
                                (uint255(stor3[1].field_0) * 0.5) + 40,
                                'Not authorized. You need the per',
                                mem[160 len (uint255(stor3[1].field_0) * 0.5) + 8],
                                0,
                                Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256
        if not pairs.length:
            revert with 0, 49
        pairs[pairs.length] = 0
        pairs.length--
    if bool(stor3[1].field_0) == stor3[1].field_1 % 128 < 32:
        revert with 0, 34
    if not bool(stor3[1].field_0):
        mem[168] = Mask(248, 8, stor3[1].field_0)
        if stor1[address(msg.sender)][1]:
            if not pairs.length:
                revert with 0, 49
            pairs[pairs.length] = 0
            pairs.length--
        mem[stor3[1].field_1 % 128 + 236 len floor32(stor3[1].field_1 % 128 + 71)] = 'Not authorized. You need the per', 0, mem[168 len stor3[1].field_1 % 128], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
        if floor32(stor3[1].field_1 % 128 + 71) <= stor3[1].field_1 % 128 + 40:
            revert with 0, 
                        32,
                        stor3[1].field_1 % 128 + 40,
                        'Not authorized. You need the per',
                        0,
                        mem[168 len stor3[1].field_1 % 128],
                        0,
                        Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
        mem[(2 * stor3[1].field_1 % 128) + 276] = 0
        revert with 0, 
                    32,
                    stor3[1].field_1 % 128 + 40,
                    Mask(8 * stor3[1].field_1 % 128 + 40, -(8 * stor3[1].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len stor3[1].field_1 % 128], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256) << (8 * stor3[1].field_1 % 128 + 40) - 256,
                    mem[(2 * stor3[1].field_1 % 128) + 276 len floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 40]
    if bool(stor3[1].field_0) != 1:
        if not stor1[address(msg.sender)][1]:
            revert with memory
              from 4294967168, 0
               len -4294967168, 0 - 60
        if not pairs.length:
            revert with 0, 49
        pairs[pairs.length] = 0
        pairs.length--
    idx = 0
    s = 0
    while idx < stor3[1].field_1 % 128:
        mem[idx + 168] = stor3[1][s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    if stor1[address(msg.sender)][1]:
        if not pairs.length:
            revert with 0, 49
        pairs[pairs.length] = 0
        pairs.length--
    mem[stor3[1].field_1 % 128 + 236 len floor32(stor3[1].field_1 % 128 + 71)] = 'Not authorized. You need the per', mem[160 len stor3[1].field_1 % 128 + 8], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
    if floor32(stor3[1].field_1 % 128 + 71) <= stor3[1].field_1 % 128 + 40:
        revert with 0, 
                    32,
                    stor3[1].field_1 % 128 + 40,
                    'Not authorized. You need the per',
                    mem[160 len stor3[1].field_1 % 128 + 8],
                    0,
                    Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
    mem[(2 * stor3[1].field_1 % 128) + 276] = 0
    revert with 0, 
                32,
                stor3[1].field_1 % 128 + 40,
                Mask(8 * stor3[1].field_1 % 128 + 40, -(8 * stor3[1].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', mem[160 len stor3[1].field_1 % 128 + 8], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256) << (8 * stor3[1].field_1 % 128 + 40) - 256,
                mem[(2 * stor3[1].field_1 % 128) + 276 len floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 40]
}

function clearStuckBNB(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if storFEAB:
        revert with 0, 'Permission is locked.'
    mem[160] = 0x6d697373696f6e20000000000000000000000000000000000000000000000000
    if bool(stor3[1].field_0):
        if bool(stor3[1].field_0) == uint255(stor3[1].field_0) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor3[1].field_0):
            mem[168] = Mask(248, 8, stor3[1].field_0)
            if not stor1[address(msg.sender)][1]:
                if floor32((uint255(stor3[1].field_0) * 0.5) + 71) > (uint255(stor3[1].field_0) * 0.5) + 40:
                    revert with 0, 
                                32,
                                (uint255(stor3[1].field_0) * 0.5) + 40,
                                Mask(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len uint255(stor3[1].field_0) * 0.5], 0, Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) - 256,
                                Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) - 256
                revert with 0, 
                            32,
                            (uint255(stor3[1].field_0) * 0.5) + 40,
                            'Not authorized. You need the per',
                            0,
                            mem[168 len uint255(stor3[1].field_0) * 0.5],
                            0,
                            Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256
        else:
            if bool(stor3[1].field_0) != 1:
                if not stor1[address(msg.sender)][1]:
                    revert with memory
                      from 4294967168, 0
                       len -4294967168, 0 - 60
            else:
                idx = 0
                s = 0
                while idx < uint255(stor3[1].field_0) * 0.5:
                    mem[idx + 168] = stor3[1][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if not stor1[address(msg.sender)][1]:
                    if floor32((uint255(stor3[1].field_0) * 0.5) + 71) > (uint255(stor3[1].field_0) * 0.5) + 40:
                        revert with 0, 
                                    32,
                                    (uint255(stor3[1].field_0) * 0.5) + 40,
                                    Mask(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', mem[160 len (uint255(stor3[1].field_0) * 0.5) + 8], 0, Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) - 256,
                                    Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) - 256
                    revert with 0, 
                                32,
                                (uint255(stor3[1].field_0) * 0.5) + 40,
                                'Not authorized. You need the per',
                                mem[160 len (uint255(stor3[1].field_0) * 0.5) + 8],
                                0,
                                Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if bool(stor3[1].field_0) == stor3[1].field_1 % 128 < 32:
        revert with 0, 34
    if not bool(stor3[1].field_0):
        mem[168] = Mask(248, 8, stor3[1].field_0)
        if stor1[address(msg.sender)][1]:
            call arg1 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[stor3[1].field_1 % 128 + 236 len floor32(stor3[1].field_1 % 128 + 71)] = 'Not authorized. You need the per', 0, mem[168 len stor3[1].field_1 % 128], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
        if floor32(stor3[1].field_1 % 128 + 71) <= stor3[1].field_1 % 128 + 40:
            revert with 0, 
                        32,
                        stor3[1].field_1 % 128 + 40,
                        'Not authorized. You need the per',
                        0,
                        mem[168 len stor3[1].field_1 % 128],
                        0,
                        Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
        mem[(2 * stor3[1].field_1 % 128) + 276] = 0
        revert with 0, 
                    32,
                    stor3[1].field_1 % 128 + 40,
                    Mask(8 * stor3[1].field_1 % 128 + 40, -(8 * stor3[1].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len stor3[1].field_1 % 128], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256) << (8 * stor3[1].field_1 % 128 + 40) - 256,
                    mem[(2 * stor3[1].field_1 % 128) + 276 len floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 40]
    if bool(stor3[1].field_0) != 1:
        if not stor1[address(msg.sender)][1]:
            revert with memory
              from 4294967168, 0
               len -4294967168, 0 - 60
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    s = 0
    while idx < stor3[1].field_1 % 128:
        mem[idx + 168] = stor3[1][s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    if stor1[address(msg.sender)][1]:
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[stor3[1].field_1 % 128 + 236 len floor32(stor3[1].field_1 % 128 + 71)] = 'Not authorized. You need the per', mem[160 len stor3[1].field_1 % 128 + 8], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
    if floor32(stor3[1].field_1 % 128 + 71) <= stor3[1].field_1 % 128 + 40:
        revert with 0, 
                    32,
                    stor3[1].field_1 % 128 + 40,
                    'Not authorized. You need the per',
                    mem[160 len stor3[1].field_1 % 128 + 8],
                    0,
                    Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
    mem[(2 * stor3[1].field_1 % 128) + 276] = 0
    revert with 0, 
                32,
                stor3[1].field_1 % 128 + 40,
                Mask(8 * stor3[1].field_1 % 128 + 40, -(8 * stor3[1].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', mem[160 len stor3[1].field_1 % 128 + 8], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256) << (8 * stor3[1].field_1 % 128 + 40) - 256,
                mem[(2 * stor3[1].field_1 % 128) + 276 len floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 40]
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if storFEAB:
        revert with 0, 'Permission is locked.'
    mem[160] = 0x6d697373696f6e20000000000000000000000000000000000000000000000000
    if bool(stor3[1].field_0):
        if bool(stor3[1].field_0) == uint255(stor3[1].field_0) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor3[1].field_0):
            mem[168] = Mask(248, 8, stor3[1].field_0)
            if not stor1[address(msg.sender)][1]:
                if floor32((uint255(stor3[1].field_0) * 0.5) + 71) > (uint255(stor3[1].field_0) * 0.5) + 40:
                    revert with 0, 
                                32,
                                (uint255(stor3[1].field_0) * 0.5) + 40,
                                Mask(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len uint255(stor3[1].field_0) * 0.5], 0, Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) - 256,
                                Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) - 256
                revert with 0, 
                            32,
                            (uint255(stor3[1].field_0) * 0.5) + 40,
                            'Not authorized. You need the per',
                            0,
                            mem[168 len uint255(stor3[1].field_0) * 0.5],
                            0,
                            Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256
            liquidityFee = arg1
            reflectionFee = arg2
            sub_56ae8b18 = arg3
            if arg1 > !arg2:
                revert with 0, 17
            if arg1 + arg2 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg1 + arg2 > !arg3:
                revert with 0, 17
            if arg3 < 0:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if bool(stor3[1].field_0) != 1:
                if not stor1[address(msg.sender)][1]:
                    revert with memory
                      from 4294967168, 0
                       len -4294967168, 0 - 60
                liquidityFee = arg1
                reflectionFee = arg2
                sub_56ae8b18 = arg3
                if arg1 > !arg2:
                    revert with 0, 17
                if arg1 + arg2 < arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '', 0, uint32('SafeMath: addition overflow')
                if arg1 + arg2 > !arg3:
                    revert with 0, 17
                if arg3 < 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '', 0, uint32('SafeMath: addition overflow')
            else:
                idx = 0
                s = 0
                while idx < uint255(stor3[1].field_0) * 0.5:
                    mem[idx + 168] = stor3[1][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if not stor1[address(msg.sender)][1]:
                    if floor32((uint255(stor3[1].field_0) * 0.5) + 71) > (uint255(stor3[1].field_0) * 0.5) + 40:
                        revert with 0, 
                                    32,
                                    (uint255(stor3[1].field_0) * 0.5) + 40,
                                    Mask(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', mem[160 len (uint255(stor3[1].field_0) * 0.5) + 8], 0, Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) - 256,
                                    Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) - 256
                    revert with 0, 
                                32,
                                (uint255(stor3[1].field_0) * 0.5) + 40,
                                'Not authorized. You need the per',
                                mem[160 len (uint255(stor3[1].field_0) * 0.5) + 8],
                                0,
                                Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256
                liquidityFee = arg1
                reflectionFee = arg2
                sub_56ae8b18 = arg3
                if arg1 > !arg2:
                    revert with 0, 17
                if arg1 + arg2 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg1 + arg2 > !arg3:
                    revert with 0, 17
                if arg3 < 0:
                    revert with 0, 'SafeMath: addition overflow'
    else:
        if bool(stor3[1].field_0) == stor3[1].field_1 % 128 < 32:
            revert with 0, 34
        if not bool(stor3[1].field_0):
            mem[168] = Mask(248, 8, stor3[1].field_0)
            if not stor1[address(msg.sender)][1]:
                mem[stor3[1].field_1 % 128 + 236 len floor32(stor3[1].field_1 % 128 + 71)] = 'Not authorized. You need the per', 0, mem[168 len stor3[1].field_1 % 128], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
                if floor32(stor3[1].field_1 % 128 + 71) <= stor3[1].field_1 % 128 + 40:
                    revert with 0, 
                                32,
                                stor3[1].field_1 % 128 + 40,
                                'Not authorized. You need the per',
                                0,
                                mem[168 len stor3[1].field_1 % 128],
                                0,
                                Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
                mem[(2 * stor3[1].field_1 % 128) + 276] = 0
                revert with 0, 
                            32,
                            stor3[1].field_1 % 128 + 40,
                            Mask(8 * stor3[1].field_1 % 128 + 40, -(8 * stor3[1].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len stor3[1].field_1 % 128], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256) << (8 * stor3[1].field_1 % 128 + 40) - 256,
                            mem[(2 * stor3[1].field_1 % 128) + 276 len floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 40]
            liquidityFee = arg1
            reflectionFee = arg2
            sub_56ae8b18 = arg3
            if arg1 > !arg2:
                revert with 0, 17
            if arg1 + arg2 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg1 + arg2 > !arg3:
                revert with 0, 17
            if arg3 < 0:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if bool(stor3[1].field_0) != 1:
                if not stor1[address(msg.sender)][1]:
                    revert with memory
                      from 4294967168, 0
                       len -4294967168, 0 - 60
                liquidityFee = arg1
                reflectionFee = arg2
                sub_56ae8b18 = arg3
                if arg1 > !arg2:
                    revert with 0, 17
                if arg1 + arg2 < arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '', 0, uint32('SafeMath: addition overflow')
                if arg1 + arg2 > !arg3:
                    revert with 0, 17
                if arg3 < 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '', 0, uint32('SafeMath: addition overflow')
            else:
                idx = 0
                s = 0
                while idx < stor3[1].field_1 % 128:
                    mem[idx + 168] = stor3[1][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if not stor1[address(msg.sender)][1]:
                    mem[stor3[1].field_1 % 128 + 236 len floor32(stor3[1].field_1 % 128 + 71)] = 'Not authorized. You need the per', mem[160 len stor3[1].field_1 % 128 + 8], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
                    if floor32(stor3[1].field_1 % 128 + 71) <= stor3[1].field_1 % 128 + 40:
                        revert with 0, 
                                    32,
                                    stor3[1].field_1 % 128 + 40,
                                    'Not authorized. You need the per',
                                    mem[160 len stor3[1].field_1 % 128 + 8],
                                    0,
                                    Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
                    mem[(2 * stor3[1].field_1 % 128) + 276] = 0
                    revert with 0, 
                                32,
                                stor3[1].field_1 % 128 + 40,
                                Mask(8 * stor3[1].field_1 % 128 + 40, -(8 * stor3[1].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', mem[160 len stor3[1].field_1 % 128 + 8], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256) << (8 * stor3[1].field_1 % 128 + 40) - 256,
                                mem[(2 * stor3[1].field_1 % 128) + 276 len floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 40]
                liquidityFee = arg1
                reflectionFee = arg2
                sub_56ae8b18 = arg3
                if arg1 > !arg2:
                    revert with 0, 17
                if arg1 + arg2 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg1 + arg2 > !arg3:
                    revert with 0, 17
                if arg3 < 0:
                    revert with 0, 'SafeMath: addition overflow'
    ('ge', ('param', 'arg3'), 0)
    stor19 = arg1 + arg2 + arg3
    feeDenominator = arg4
    require 2500 >= arg1 + arg2 + arg3
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if storBEB3:
        revert with 0, 'Permission is locked.'
    mem[160] = 0x6d697373696f6e20000000000000000000000000000000000000000000000000
    if bool(stor3[7].field_0):
        if bool(stor3[7].field_0) == uint255(stor3[7].field_0) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor3[7].field_0):
            mem[168] = Mask(248, 8, stor3[7].field_0)
            if not stor1[address(msg.sender)][7]:
                if floor32((uint255(stor3[7].field_0) * 0.5) + 71) > (uint255(stor3[7].field_0) * 0.5) + 40:
                    revert with 0, 
                                32,
                                (uint255(stor3[7].field_0) * 0.5) + 40,
                                Mask(8 * Mask(254, 1, stor3[7].field_0) + -(uint255(stor3[7].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[7].field_0) + -(uint255(stor3[7].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len uint255(stor3[7].field_0) * 0.5], 0, Mask(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[7].field_0) + -(uint255(stor3[7].field_0) * 0.5) + 40) - 256,
                                Mask(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + (uint255(stor3[7].field_0) * 0.5) + -Mask(254, 1, stor3[7].field_0) - 40, -(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + (uint255(stor3[7].field_0) * 0.5) + -Mask(254, 1, stor3[7].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + (uint255(stor3[7].field_0) * 0.5) + -Mask(254, 1, stor3[7].field_0) - 40) - 256
                revert with 0, 
                            32,
                            (uint255(stor3[7].field_0) * 0.5) + 40,
                            'Not authorized. You need the per',
                            0,
                            mem[168 len uint255(stor3[7].field_0) * 0.5],
                            0,
                            Mask(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44) - 256
            require arg1 != this.address
            require stor25 != arg1
            stor15[address(arg1)] = uint8(arg2)
            require ext_code.size(address(stor28.field_24))
            if not arg2:
                call address(stor28.field_24).setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), uint256(balanceOf[address(arg1)])
            else:
                call address(stor28.field_24).setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), 0
        else:
            if bool(stor3[7].field_0) != 1:
                if not stor1[address(msg.sender)][7]:
                    revert with memory
                      from 4294967168, 0
                       len -4294967168, 0 - 60
                require arg1 != this.address
                require stor25 != arg1
                stor15[address(arg1)] = uint8(arg2)
                require ext_code.size(address(stor28.field_24))
                if not arg2:
                    call address(stor28.field_24).setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0, 11, uint32(balanceOf[address(arg1)])
                else:
                    call address(stor28.field_24).setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0, 15, 0
            else:
                idx = 0
                s = 0
                while idx < uint255(stor3[7].field_0) * 0.5:
                    mem[idx + 168] = stor3[7][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if not stor1[address(msg.sender)][7]:
                    if floor32((uint255(stor3[7].field_0) * 0.5) + 71) > (uint255(stor3[7].field_0) * 0.5) + 40:
                        revert with 0, 
                                    32,
                                    (uint255(stor3[7].field_0) * 0.5) + 40,
                                    Mask(8 * Mask(254, 1, stor3[7].field_0) + -(uint255(stor3[7].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[7].field_0) + -(uint255(stor3[7].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', mem[160 len (uint255(stor3[7].field_0) * 0.5) + 8], 0, Mask(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[7].field_0) + -(uint255(stor3[7].field_0) * 0.5) + 40) - 256,
                                    Mask(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + (uint255(stor3[7].field_0) * 0.5) + -Mask(254, 1, stor3[7].field_0) - 40, -(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + (uint255(stor3[7].field_0) * 0.5) + -Mask(254, 1, stor3[7].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + (uint255(stor3[7].field_0) * 0.5) + -Mask(254, 1, stor3[7].field_0) - 40) - 256
                    revert with 0, 
                                32,
                                (uint255(stor3[7].field_0) * 0.5) + 40,
                                'Not authorized. You need the per',
                                mem[160 len (uint255(stor3[7].field_0) * 0.5) + 8],
                                0,
                                Mask(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[7].field_0) * 0.5) + 71) + -(uint255(stor3[7].field_0) * 0.5) - 44) - 256
                require arg1 != this.address
                require stor25 != arg1
                stor15[address(arg1)] = uint8(arg2)
                require ext_code.size(address(stor28.field_24))
                if not arg2:
                    call address(stor28.field_24).setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), uint256(balanceOf[address(arg1)])
                else:
                    call address(stor28.field_24).setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), 0
    else:
        if bool(stor3[7].field_0) == stor3[7].field_1 % 128 < 32:
            revert with 0, 34
        if not bool(stor3[7].field_0):
            mem[168] = Mask(248, 8, stor3[7].field_0)
            if not stor1[address(msg.sender)][7]:
                mem[stor3[7].field_1 % 128 + 236 len floor32(stor3[7].field_1 % 128 + 71)] = 'Not authorized. You need the per', 0, mem[168 len stor3[7].field_1 % 128], 0, Mask(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44, -(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) - 256
                if floor32(stor3[7].field_1 % 128 + 71) <= stor3[7].field_1 % 128 + 40:
                    revert with 0, 
                                32,
                                stor3[7].field_1 % 128 + 40,
                                'Not authorized. You need the per',
                                0,
                                mem[168 len stor3[7].field_1 % 128],
                                0,
                                Mask(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44, -(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) - 256
                mem[(2 * stor3[7].field_1 % 128) + 276] = 0
                revert with 0, 
                            32,
                            stor3[7].field_1 % 128 + 40,
                            Mask(8 * stor3[7].field_1 % 128 + 40, -(8 * stor3[7].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len stor3[7].field_1 % 128], 0, Mask(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44, -(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) - 256) << (8 * stor3[7].field_1 % 128 + 40) - 256,
                            mem[(2 * stor3[7].field_1 % 128) + 276 len floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 40]
            require arg1 != this.address
            require stor25 != arg1
            stor15[address(arg1)] = uint8(arg2)
            require ext_code.size(address(stor28.field_24))
            if not arg2:
                call address(stor28.field_24).setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), uint256(balanceOf[address(arg1)])
            else:
                call address(stor28.field_24).setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), 0
        else:
            if bool(stor3[7].field_0) != 1:
                if not stor1[address(msg.sender)][7]:
                    revert with memory
                      from 4294967168, 0
                       len -4294967168, 0 - 60
                require arg1 != this.address
                require stor25 != arg1
                stor15[address(arg1)] = uint8(arg2)
                require ext_code.size(address(stor28.field_24))
                if not arg2:
                    call address(stor28.field_24).setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0, 11, uint32(balanceOf[address(arg1)])
                else:
                    call address(stor28.field_24).setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0, 15, 0
            else:
                idx = 0
                s = 0
                while idx < stor3[7].field_1 % 128:
                    mem[idx + 168] = stor3[7][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if not stor1[address(msg.sender)][7]:
                    mem[stor3[7].field_1 % 128 + 236 len floor32(stor3[7].field_1 % 128 + 71)] = 'Not authorized. You need the per', mem[160 len stor3[7].field_1 % 128 + 8], 0, Mask(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44, -(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) - 256
                    if floor32(stor3[7].field_1 % 128 + 71) <= stor3[7].field_1 % 128 + 40:
                        revert with 0, 
                                    32,
                                    stor3[7].field_1 % 128 + 40,
                                    'Not authorized. You need the per',
                                    mem[160 len stor3[7].field_1 % 128 + 8],
                                    0,
                                    Mask(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44, -(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) - 256
                    mem[(2 * stor3[7].field_1 % 128) + 276] = 0
                    revert with 0, 
                                32,
                                stor3[7].field_1 % 128 + 40,
                                Mask(8 * stor3[7].field_1 % 128 + 40, -(8 * stor3[7].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', mem[160 len stor3[7].field_1 % 128 + 8], 0, Mask(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44, -(8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 44) - 256) << (8 * stor3[7].field_1 % 128 + 40) - 256,
                                mem[(2 * stor3[7].field_1 % 128) + 276 len floor32(stor3[7].field_1 % 128 + 71) + -stor3[7].field_1 % 128 - 40]
                require arg1 != this.address
                require stor25 != arg1
                stor15[address(arg1)] = uint8(arg2)
                require ext_code.size(address(stor28.field_24))
                if not arg2:
                    call address(stor28.field_24).setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), uint256(balanceOf[address(arg1)])
                else:
                    call address(stor28.field_24).setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setTxLimit(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if storFEAB:
        revert with 0, 'Permission is locked.'
    mem[160] = 0x6d697373696f6e20000000000000000000000000000000000000000000000000
    if bool(stor3[1].field_0):
        if bool(stor3[1].field_0) == uint255(stor3[1].field_0) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor3[1].field_0):
            mem[168] = Mask(248, 8, stor3[1].field_0)
            if not stor1[address(msg.sender)][1]:
                if floor32((uint255(stor3[1].field_0) * 0.5) + 71) > (uint255(stor3[1].field_0) * 0.5) + 40:
                    revert with 0, 
                                32,
                                (uint255(stor3[1].field_0) * 0.5) + 40,
                                Mask(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len uint255(stor3[1].field_0) * 0.5], 0, Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) - 256,
                                Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) - 256
                revert with 0, 
                            32,
                            (uint255(stor3[1].field_0) * 0.5) + 40,
                            'Not authorized. You need the per',
                            0,
                            mem[168 len uint255(stor3[1].field_0) * 0.5],
                            0,
                            Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256
            if not arg2:
                require arg1 >= totalSupply / 1000
            else:
                if uint256(balanceOf[stor7]) > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if totalSupply < uint256(balanceOf[stor7]):
                    revert with 0, 17
                if uint256(balanceOf[stor8]) > totalSupply - uint256(balanceOf[stor7]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if totalSupply - uint256(balanceOf[stor7]) < uint256(balanceOf[stor8]):
                    revert with 0, 17
                require arg1 >= totalSupply - uint256(balanceOf[stor7]) - uint256(balanceOf[stor8]) / 1000
        else:
            if bool(stor3[1].field_0) != 1:
                if not stor1[address(msg.sender)][1]:
                    revert with memory
                      from 4294967168, 0
                       len -4294967168, 0 - 60
                if not arg2:
                    require arg1 >= totalSupply / 1000
                else:
                    if uint256(balanceOf[stor7]) > totalSupply:
                        revert with mem[0], 3, Error(string arg1), 'SafeMath: subtraction overflow', 0
                    if totalSupply < uint256(balanceOf[stor7]):
                        revert with 0, 17
                    if uint256(balanceOf[stor8]) > totalSupply - uint256(balanceOf[stor7]):
                        revert with mem[30 len 2], 3, 30, 'SafeMath: subtraction overflow', 0, 'SafeMath: subtraction overflow', 0
                    if totalSupply - uint256(balanceOf[stor7]) < uint256(balanceOf[stor8]):
                        revert with 0, 17
                    require arg1 >= totalSupply - uint256(balanceOf[stor7]) - uint256(balanceOf[stor8]) / 1000
            else:
                idx = 0
                s = 0
                while idx < uint255(stor3[1].field_0) * 0.5:
                    mem[idx + 168] = stor3[1][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if not stor1[address(msg.sender)][1]:
                    if floor32((uint255(stor3[1].field_0) * 0.5) + 71) > (uint255(stor3[1].field_0) * 0.5) + 40:
                        revert with 0, 
                                    32,
                                    (uint255(stor3[1].field_0) * 0.5) + 40,
                                    Mask(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', mem[160 len (uint255(stor3[1].field_0) * 0.5) + 8], 0, Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[1].field_0) + -(uint255(stor3[1].field_0) * 0.5) + 40) - 256,
                                    Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + (uint255(stor3[1].field_0) * 0.5) + -Mask(254, 1, stor3[1].field_0) - 40) - 256
                    revert with 0, 
                                32,
                                (uint255(stor3[1].field_0) * 0.5) + 40,
                                'Not authorized. You need the per',
                                mem[160 len (uint255(stor3[1].field_0) * 0.5) + 8],
                                0,
                                Mask(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[1].field_0) * 0.5) + 71) + -(uint255(stor3[1].field_0) * 0.5) - 44) - 256
                if not arg2:
                    require arg1 >= totalSupply / 1000
                else:
                    if uint256(balanceOf[stor7]) > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if totalSupply < uint256(balanceOf[stor7]):
                        revert with 0, 17
                    if uint256(balanceOf[stor8]) > totalSupply - uint256(balanceOf[stor7]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if totalSupply - uint256(balanceOf[stor7]) < uint256(balanceOf[stor8]):
                        revert with 0, 17
                    require arg1 >= totalSupply - uint256(balanceOf[stor7]) - uint256(balanceOf[stor8]) / 1000
    else:
        if bool(stor3[1].field_0) == stor3[1].field_1 % 128 < 32:
            revert with 0, 34
        if not bool(stor3[1].field_0):
            mem[168] = Mask(248, 8, stor3[1].field_0)
            if not stor1[address(msg.sender)][1]:
                mem[stor3[1].field_1 % 128 + 236 len floor32(stor3[1].field_1 % 128 + 71)] = 'Not authorized. You need the per', 0, mem[168 len stor3[1].field_1 % 128], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
                if floor32(stor3[1].field_1 % 128 + 71) <= stor3[1].field_1 % 128 + 40:
                    revert with 0, 
                                32,
                                stor3[1].field_1 % 128 + 40,
                                'Not authorized. You need the per',
                                0,
                                mem[168 len stor3[1].field_1 % 128],
                                0,
                                Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
                mem[(2 * stor3[1].field_1 % 128) + 276] = 0
                revert with 0, 
                            32,
                            stor3[1].field_1 % 128 + 40,
                            Mask(8 * stor3[1].field_1 % 128 + 40, -(8 * stor3[1].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len stor3[1].field_1 % 128], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256) << (8 * stor3[1].field_1 % 128 + 40) - 256,
                            mem[(2 * stor3[1].field_1 % 128) + 276 len floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 40]
            if not arg2:
                require arg1 >= totalSupply / 1000
            else:
                if uint256(balanceOf[stor7]) > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if totalSupply < uint256(balanceOf[stor7]):
                    revert with 0, 17
                if uint256(balanceOf[stor8]) > totalSupply - uint256(balanceOf[stor7]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if totalSupply - uint256(balanceOf[stor7]) < uint256(balanceOf[stor8]):
                    revert with 0, 17
                require arg1 >= totalSupply - uint256(balanceOf[stor7]) - uint256(balanceOf[stor8]) / 1000
        else:
            if bool(stor3[1].field_0) != 1:
                if not stor1[address(msg.sender)][1]:
                    revert with memory
                      from 4294967168, 0
                       len -4294967168, 0 - 60
                if not arg2:
                    require arg1 >= totalSupply / 1000
                else:
                    if uint256(balanceOf[stor7]) > totalSupply:
                        revert with mem[0], 3, Error(string arg1), 'SafeMath: subtraction overflow', 0
                    if totalSupply < uint256(balanceOf[stor7]):
                        revert with 0, 17
                    if uint256(balanceOf[stor8]) > totalSupply - uint256(balanceOf[stor7]):
                        revert with mem[30 len 2], 3, 30, 'SafeMath: subtraction overflow', 0, 'SafeMath: subtraction overflow', 0
                    if totalSupply - uint256(balanceOf[stor7]) < uint256(balanceOf[stor8]):
                        revert with 0, 17
                    require arg1 >= totalSupply - uint256(balanceOf[stor7]) - uint256(balanceOf[stor8]) / 1000
            else:
                idx = 0
                s = 0
                while idx < stor3[1].field_1 % 128:
                    mem[idx + 168] = stor3[1][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if not stor1[address(msg.sender)][1]:
                    mem[stor3[1].field_1 % 128 + 236 len floor32(stor3[1].field_1 % 128 + 71)] = 'Not authorized. You need the per', mem[160 len stor3[1].field_1 % 128 + 8], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
                    if floor32(stor3[1].field_1 % 128 + 71) <= stor3[1].field_1 % 128 + 40:
                        revert with 0, 
                                    32,
                                    stor3[1].field_1 % 128 + 40,
                                    'Not authorized. You need the per',
                                    mem[160 len stor3[1].field_1 % 128 + 8],
                                    0,
                                    Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256
                    mem[(2 * stor3[1].field_1 % 128) + 276] = 0
                    revert with 0, 
                                32,
                                stor3[1].field_1 % 128 + 40,
                                Mask(8 * stor3[1].field_1 % 128 + 40, -(8 * stor3[1].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', mem[160 len stor3[1].field_1 % 128 + 8], 0, Mask(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44, -(8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 44) - 256) << (8 * stor3[1].field_1 % 128 + 40) - 256,
                                mem[(2 * stor3[1].field_1 % 128) + 276 len floor32(stor3[1].field_1 % 128 + 71) + -stor3[1].field_1 % 128 - 40]
                if not arg2:
                    require arg1 >= totalSupply / 1000
                else:
                    if uint256(balanceOf[stor7]) > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if totalSupply < uint256(balanceOf[stor7]):
                        revert with 0, 17
                    if uint256(balanceOf[stor8]) > totalSupply - uint256(balanceOf[stor7]):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if totalSupply - uint256(balanceOf[stor7]) < uint256(balanceOf[stor8]):
                        revert with 0, 17
                    require arg1 >= totalSupply - uint256(balanceOf[stor7]) - uint256(balanceOf[stor8]) / 1000
    _maxTxAmount = arg1
}

function sub_1e8f5283(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if stor91DA:
        revert with 0, 'Permission is locked.'
    mem[ceil32(ceil32(arg2.length)) + 161] = 0x6d697373696f6e20000000000000000000000000000000000000000000000000
    if bool(stor3[2].field_0):
        if bool(stor3[2].field_0) == uint255(stor3[2].field_0) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor3[2].field_0):
            mem[ceil32(ceil32(arg2.length)) + 169] = Mask(248, 8, stor3[2].field_0)
            if not stor1[address(msg.sender)][2]:
                if floor32((uint255(stor3[2].field_0) * 0.5) + 71) > (uint255(stor3[2].field_0) * 0.5) + 40:
                    revert with 0, 
                                32,
                                (uint255(stor3[2].field_0) * 0.5) + 40,
                                Mask(8 * Mask(254, 1, stor3[2].field_0) + -(uint255(stor3[2].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[2].field_0) + -(uint255(stor3[2].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', 0, mem[ceil32(ceil32(arg2.length)) + 169 len uint255(stor3[2].field_0) * 0.5], 0, Mask(8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + -(uint255(stor3[2].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + -(uint255(stor3[2].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + -(uint255(stor3[2].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[2].field_0) + -(uint255(stor3[2].field_0) * 0.5) + 40) - 256,
                                Mask(8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + (uint255(stor3[2].field_0) * 0.5) + -Mask(254, 1, stor3[2].field_0) - 40, -(8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + (uint255(stor3[2].field_0) * 0.5) + -Mask(254, 1, stor3[2].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + (uint255(stor3[2].field_0) * 0.5) + -Mask(254, 1, stor3[2].field_0) - 40) - 256
                revert with 0, 
                            32,
                            (uint255(stor3[2].field_0) * 0.5) + 40,
                            'Not authorized. You need the per',
                            0,
                            mem[ceil32(ceil32(arg2.length)) + 169 len uint255(stor3[2].field_0) * 0.5],
                            0,
                            Mask(8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + -(uint255(stor3[2].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + -(uint255(stor3[2].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + -(uint255(stor3[2].field_0) * 0.5) - 44) - 256
            stor1[address(arg1)][stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 2)][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, (uint255(stor3[2].field_0) * 0.5) + 40) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256]] = 1
            emit AuthorizedFor(address(arg1), Array(len=arg2.length, data=arg2[all]), stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 2)][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, (uint255(stor3[2].field_0) * 0.5) + 40) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256]);
        if bool(stor3[2].field_0) == 1:
            idx = 0
            s = 0
            while idx < uint255(stor3[2].field_0) * 0.5:
                mem[idx + ceil32(ceil32(arg2.length)) + 169] = stor3[2][s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            if not stor1[address(msg.sender)][2]:
                if floor32((uint255(stor3[2].field_0) * 0.5) + 71) > (uint255(stor3[2].field_0) * 0.5) + 40:
                    revert with 0, 
                                32,
                                (uint255(stor3[2].field_0) * 0.5) + 40,
                                Mask(8 * Mask(254, 1, stor3[2].field_0) + -(uint255(stor3[2].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[2].field_0) + -(uint255(stor3[2].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', mem[ceil32(ceil32(arg2.length)) + 161 len (uint255(stor3[2].field_0) * 0.5) + 8], 0, Mask(8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + -(uint255(stor3[2].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + -(uint255(stor3[2].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + -(uint255(stor3[2].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[2].field_0) + -(uint255(stor3[2].field_0) * 0.5) + 40) - 256,
                                Mask(8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + (uint255(stor3[2].field_0) * 0.5) + -Mask(254, 1, stor3[2].field_0) - 40, -(8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + (uint255(stor3[2].field_0) * 0.5) + -Mask(254, 1, stor3[2].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + (uint255(stor3[2].field_0) * 0.5) + -Mask(254, 1, stor3[2].field_0) - 40) - 256
                revert with 0, 
                            32,
                            (uint255(stor3[2].field_0) * 0.5) + 40,
                            'Not authorized. You need the per',
                            mem[ceil32(ceil32(arg2.length)) + 161 len (uint255(stor3[2].field_0) * 0.5) + 8],
                            0,
                            Mask(8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + -(uint255(stor3[2].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + -(uint255(stor3[2].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + -(uint255(stor3[2].field_0) * 0.5) - 44) - 256
            stor1[address(arg1)][stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 2)][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, (uint255(stor3[2].field_0) * 0.5) + 40) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256]] = 1
            emit AuthorizedFor(address(arg1), Array(len=arg2.length, data=arg2[all]), stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 2)][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, (uint255(stor3[2].field_0) * 0.5) + 40) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256]);
    else:
        if bool(stor3[2].field_0) == stor3[2].field_1 % 128 < 32:
            revert with 0, 34
        if not bool(stor3[2].field_0):
            mem[ceil32(ceil32(arg2.length)) + 169] = Mask(248, 8, stor3[2].field_0)
            if not stor1[address(msg.sender)][2]:
                mem[ceil32(ceil32(arg2.length)) + stor3[2].field_1 % 128 + 237 len floor32(stor3[2].field_1 % 128 + 71)] = 'Not authorized. You need the per', 0, mem[ceil32(ceil32(arg2.length)) + 169 len stor3[2].field_1 % 128], 0, Mask(8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44, -(8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44) - 256
                if floor32(stor3[2].field_1 % 128 + 71) <= stor3[2].field_1 % 128 + 40:
                    revert with 0, 
                                32,
                                stor3[2].field_1 % 128 + 40,
                                'Not authorized. You need the per',
                                0,
                                mem[ceil32(ceil32(arg2.length)) + 169 len stor3[2].field_1 % 128],
                                0,
                                Mask(8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44, -(8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44) - 256
                mem[(2 * stor3[2].field_1 % 128) + ceil32(ceil32(arg2.length)) + 277] = 0
                revert with 0, 
                            32,
                            stor3[2].field_1 % 128 + 40,
                            Mask(8 * stor3[2].field_1 % 128 + 40, -(8 * stor3[2].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', 0, mem[ceil32(ceil32(arg2.length)) + 169 len stor3[2].field_1 % 128], 0, Mask(8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44, -(8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44) - 256) << (8 * stor3[2].field_1 % 128 + 40) - 256,
                            mem[ceil32(ceil32(arg2.length)) + (2 * stor3[2].field_1 % 128) + 277 len floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 40]
            stor1[address(arg1)][stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 2)][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, stor3[2].field_1 % 128 + 40) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256]] = 1
            emit AuthorizedFor(address(arg1), Array(len=arg2.length, data=arg2[all]), stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 2)][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, stor3[2].field_1 % 128 + 40) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256]);
        if bool(stor3[2].field_0) == 1:
            idx = 0
            s = 0
            while idx < stor3[2].field_1 % 128:
                mem[idx + ceil32(ceil32(arg2.length)) + 169] = stor3[2][s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            if not stor1[address(msg.sender)][2]:
                mem[ceil32(ceil32(arg2.length)) + stor3[2].field_1 % 128 + 237 len floor32(stor3[2].field_1 % 128 + 71)] = 'Not authorized. You need the per', mem[ceil32(ceil32(arg2.length)) + 161 len stor3[2].field_1 % 128 + 8], 0, Mask(8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44, -(8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44) - 256
                if floor32(stor3[2].field_1 % 128 + 71) <= stor3[2].field_1 % 128 + 40:
                    revert with 0, 
                                32,
                                stor3[2].field_1 % 128 + 40,
                                'Not authorized. You need the per',
                                mem[ceil32(ceil32(arg2.length)) + 161 len stor3[2].field_1 % 128 + 8],
                                0,
                                Mask(8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44, -(8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44) - 256
                mem[(2 * stor3[2].field_1 % 128) + ceil32(ceil32(arg2.length)) + 277] = 0
                revert with 0, 
                            32,
                            stor3[2].field_1 % 128 + 40,
                            Mask(8 * stor3[2].field_1 % 128 + 40, -(8 * stor3[2].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', mem[ceil32(ceil32(arg2.length)) + 161 len stor3[2].field_1 % 128 + 8], 0, Mask(8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44, -(8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44) - 256) << (8 * stor3[2].field_1 % 128 + 40) - 256,
                            mem[ceil32(ceil32(arg2.length)) + (2 * stor3[2].field_1 % 128) + 277 len floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 40]
            stor1[address(arg1)][stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 2)][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, stor3[2].field_1 % 128 + 40) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256]] = 1
            emit AuthorizedFor(address(arg1), Array(len=arg2.length, data=arg2[all]), stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 2)][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, stor3[2].field_1 % 128 + 40) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256]);
    ('iszero', ('eq', ('type', 1, ('field', 0, ('stor', ('map', 2, ('name', 'stor3', 3))))), 1))
    mem[64] = 0
    if stor1[address(msg.sender)][2]:
        stor1[address(arg1)][stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 2)][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, -ceil32(ceil32(arg2.length)) - 129) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256]] = 1
        emit AuthorizedFor(address arg1, string arg2, uint256 arg3):
                           address(arg1),
                           96,
                           0,
                           arg2.length,
                           arg2[all],
                           Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, -ceil32(ceil32(arg2.length)) - 129) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256,
    mem[0] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[4] = 32
    mem[36] = -ceil32(ceil32(arg2.length)) - 129
    mem[68 len floor32(-ceil32(ceil32(arg2.length)) - 98)] = 'Not authorized. You need the per', 0x6d697373696f6e20000000000000000000000000000000000000000000000000, mem[ceil32(ceil32(arg2.length)) + 193 len floor32(-ceil32(ceil32(arg2.length)) - 98) - 64]
    if floor32(-ceil32(ceil32(arg2.length)) - 98) > -ceil32(ceil32(arg2.length)) - 129:
        mem[-ceil32(ceil32(arg2.length)) - 61] = 0
    revert with memory
      from uint32(-ceil32(ceil32(arg2.length)) - 129), 0
       len floor32(-ceil32(ceil32(arg2.length)) - 98) + -uint32(-ceil32(ceil32(arg2.length)) - 129), 0 + 68
}

function sub_8101cae3(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if stor2E17:
        revert with 0, 'Permission is locked.'
    mem[ceil32(ceil32(arg2.length)) + 161] = 0x6d697373696f6e20000000000000000000000000000000000000000000000000
    if bool(stor3[3].field_0):
        if bool(stor3[3].field_0) == uint255(stor3[3].field_0) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor3[3].field_0):
            mem[ceil32(ceil32(arg2.length)) + 169] = Mask(248, 8, stor3[3].field_0)
            if not stor1[address(msg.sender)][3]:
                if floor32((uint255(stor3[3].field_0) * 0.5) + 71) > (uint255(stor3[3].field_0) * 0.5) + 40:
                    revert with 0, 
                                32,
                                (uint255(stor3[3].field_0) * 0.5) + 40,
                                Mask(8 * Mask(254, 1, stor3[3].field_0) + -(uint255(stor3[3].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[3].field_0) + -(uint255(stor3[3].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', 0, mem[ceil32(ceil32(arg2.length)) + 169 len uint255(stor3[3].field_0) * 0.5], 0, Mask(8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + -(uint255(stor3[3].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + -(uint255(stor3[3].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + -(uint255(stor3[3].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[3].field_0) + -(uint255(stor3[3].field_0) * 0.5) + 40) - 256,
                                Mask(8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + (uint255(stor3[3].field_0) * 0.5) + -Mask(254, 1, stor3[3].field_0) - 40, -(8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + (uint255(stor3[3].field_0) * 0.5) + -Mask(254, 1, stor3[3].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + (uint255(stor3[3].field_0) * 0.5) + -Mask(254, 1, stor3[3].field_0) - 40) - 256
                revert with 0, 
                            32,
                            (uint255(stor3[3].field_0) * 0.5) + 40,
                            'Not authorized. You need the per',
                            0,
                            mem[ceil32(ceil32(arg2.length)) + 169 len uint255(stor3[3].field_0) * 0.5],
                            0,
                            Mask(8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + -(uint255(stor3[3].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + -(uint255(stor3[3].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + -(uint255(stor3[3].field_0) * 0.5) - 44) - 256
            if owner == address(arg1):
                revert with 0, 'Can't unauthorize owner'
            stor1[address(arg1)][stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 2)][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, (uint255(stor3[3].field_0) * 0.5) + 40) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256]] = 0
            emit UnauthorizedFor(address(arg1), Array(len=arg2.length, data=arg2[all]), stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 2)][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, (uint255(stor3[3].field_0) * 0.5) + 40) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256]);
        if bool(stor3[3].field_0) == 1:
            idx = 0
            s = 0
            while idx < uint255(stor3[3].field_0) * 0.5:
                mem[idx + ceil32(ceil32(arg2.length)) + 169] = stor3[3][s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            if not stor1[address(msg.sender)][3]:
                if floor32((uint255(stor3[3].field_0) * 0.5) + 71) > (uint255(stor3[3].field_0) * 0.5) + 40:
                    revert with 0, 
                                32,
                                (uint255(stor3[3].field_0) * 0.5) + 40,
                                Mask(8 * Mask(254, 1, stor3[3].field_0) + -(uint255(stor3[3].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[3].field_0) + -(uint255(stor3[3].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', mem[ceil32(ceil32(arg2.length)) + 161 len (uint255(stor3[3].field_0) * 0.5) + 8], 0, Mask(8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + -(uint255(stor3[3].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + -(uint255(stor3[3].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + -(uint255(stor3[3].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[3].field_0) + -(uint255(stor3[3].field_0) * 0.5) + 40) - 256,
                                Mask(8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + (uint255(stor3[3].field_0) * 0.5) + -Mask(254, 1, stor3[3].field_0) - 40, -(8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + (uint255(stor3[3].field_0) * 0.5) + -Mask(254, 1, stor3[3].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + (uint255(stor3[3].field_0) * 0.5) + -Mask(254, 1, stor3[3].field_0) - 40) - 256
                revert with 0, 
                            32,
                            (uint255(stor3[3].field_0) * 0.5) + 40,
                            'Not authorized. You need the per',
                            mem[ceil32(ceil32(arg2.length)) + 161 len (uint255(stor3[3].field_0) * 0.5) + 8],
                            0,
                            Mask(8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + -(uint255(stor3[3].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + -(uint255(stor3[3].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + -(uint255(stor3[3].field_0) * 0.5) - 44) - 256
            if owner == address(arg1):
                revert with 0, 'Can't unauthorize owner'
            stor1[address(arg1)][stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 2)][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, (uint255(stor3[3].field_0) * 0.5) + 40) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256]] = 0
            emit UnauthorizedFor(address(arg1), Array(len=arg2.length, data=arg2[all]), stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 2)][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, (uint255(stor3[3].field_0) * 0.5) + 40) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256]);
    else:
        if bool(stor3[3].field_0) == stor3[3].field_1 % 128 < 32:
            revert with 0, 34
        if not bool(stor3[3].field_0):
            mem[ceil32(ceil32(arg2.length)) + 169] = Mask(248, 8, stor3[3].field_0)
            if not stor1[address(msg.sender)][3]:
                mem[ceil32(ceil32(arg2.length)) + stor3[3].field_1 % 128 + 237 len floor32(stor3[3].field_1 % 128 + 71)] = 'Not authorized. You need the per', 0, mem[ceil32(ceil32(arg2.length)) + 169 len stor3[3].field_1 % 128], 0, Mask(8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44, -(8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44) - 256
                if floor32(stor3[3].field_1 % 128 + 71) <= stor3[3].field_1 % 128 + 40:
                    revert with 0, 
                                32,
                                stor3[3].field_1 % 128 + 40,
                                'Not authorized. You need the per',
                                0,
                                mem[ceil32(ceil32(arg2.length)) + 169 len stor3[3].field_1 % 128],
                                0,
                                Mask(8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44, -(8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44) - 256
                mem[(2 * stor3[3].field_1 % 128) + ceil32(ceil32(arg2.length)) + 277] = 0
                revert with 0, 
                            32,
                            stor3[3].field_1 % 128 + 40,
                            Mask(8 * stor3[3].field_1 % 128 + 40, -(8 * stor3[3].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', 0, mem[ceil32(ceil32(arg2.length)) + 169 len stor3[3].field_1 % 128], 0, Mask(8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44, -(8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44) - 256) << (8 * stor3[3].field_1 % 128 + 40) - 256,
                            mem[ceil32(ceil32(arg2.length)) + (2 * stor3[3].field_1 % 128) + 277 len floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 40]
            if owner == address(arg1):
                revert with 0, 'Can't unauthorize owner'
            stor1[address(arg1)][stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 2)][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, stor3[3].field_1 % 128 + 40) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256]] = 0
            emit UnauthorizedFor(address(arg1), Array(len=arg2.length, data=arg2[all]), stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 2)][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, stor3[3].field_1 % 128 + 40) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256]);
        if bool(stor3[3].field_0) == 1:
            idx = 0
            s = 0
            while idx < stor3[3].field_1 % 128:
                mem[idx + ceil32(ceil32(arg2.length)) + 169] = stor3[3][s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            if not stor1[address(msg.sender)][3]:
                mem[ceil32(ceil32(arg2.length)) + stor3[3].field_1 % 128 + 237 len floor32(stor3[3].field_1 % 128 + 71)] = 'Not authorized. You need the per', mem[ceil32(ceil32(arg2.length)) + 161 len stor3[3].field_1 % 128 + 8], 0, Mask(8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44, -(8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44) - 256
                if floor32(stor3[3].field_1 % 128 + 71) <= stor3[3].field_1 % 128 + 40:
                    revert with 0, 
                                32,
                                stor3[3].field_1 % 128 + 40,
                                'Not authorized. You need the per',
                                mem[ceil32(ceil32(arg2.length)) + 161 len stor3[3].field_1 % 128 + 8],
                                0,
                                Mask(8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44, -(8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44) - 256
                mem[(2 * stor3[3].field_1 % 128) + ceil32(ceil32(arg2.length)) + 277] = 0
                revert with 0, 
                            32,
                            stor3[3].field_1 % 128 + 40,
                            Mask(8 * stor3[3].field_1 % 128 + 40, -(8 * stor3[3].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', mem[ceil32(ceil32(arg2.length)) + 161 len stor3[3].field_1 % 128 + 8], 0, Mask(8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44, -(8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44) - 256) << (8 * stor3[3].field_1 % 128 + 40) - 256,
                            mem[ceil32(ceil32(arg2.length)) + (2 * stor3[3].field_1 % 128) + 277 len floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 40]
            if owner == address(arg1):
                revert with 0, 'Can't unauthorize owner'
            stor1[address(arg1)][stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 2)][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, stor3[3].field_1 % 128 + 40) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256]] = 0
            emit UnauthorizedFor(address(arg1), Array(len=arg2.length, data=arg2[all]), stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 2)][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, stor3[3].field_1 % 128 + 40) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256]);
    ('iszero', ('eq', ('type', 1, ('field', 0, ('stor', ('map', 3, ('name', 'stor3', 3))))), 1))
    mem[64] = 0
    if stor1[address(msg.sender)][3]:
        if owner == address(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '', 0, 0
        stor1[address(arg1)][stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 2)][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, -ceil32(ceil32(arg2.length)) - 129) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256]] = 0
        emit UnauthorizedFor(address arg1, string arg2, uint256 arg3):
                             address(arg1),
                             96,
                             0,
                             arg2.length,
                             arg2[all],
                             Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, -ceil32(ceil32(arg2.length)) - 129) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256,
    mem[0] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[4] = 32
    mem[36] = -ceil32(ceil32(arg2.length)) - 129
    mem[68 len floor32(-ceil32(ceil32(arg2.length)) - 98)] = 'Not authorized. You need the per', 0x6d697373696f6e20000000000000000000000000000000000000000000000000, mem[ceil32(ceil32(arg2.length)) + 193 len floor32(-ceil32(ceil32(arg2.length)) - 98) - 64]
    if floor32(-ceil32(ceil32(arg2.length)) - 98) > -ceil32(ceil32(arg2.length)) - 129:
        mem[-ceil32(ceil32(arg2.length)) - 61] = 0
    revert with memory
      from uint32(-ceil32(ceil32(arg2.length)) - 129), 0
       len floor32(-ceil32(ceil32(arg2.length)) - 98) + -uint32(-ceil32(ceil32(arg2.length)) - 129), 0 + 68
}

function sub_af05cf93(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if stor91DA:
        revert with 0, 'Permission is locked.'
    mem[0] = 2
    mem[128] = 'Not authorized. You need the per'
    mem[160] = 0x6d697373696f6e20000000000000000000000000000000000000000000000000
    if bool(stor3[2].field_0):
        if bool(stor3[2].field_0) == uint255(stor3[2].field_0) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor3[2].field_0):
            mem[168] = Mask(248, 8, stor3[2].field_0)
            mem[96] = (uint255(stor3[2].field_0) * 0.5) + 40
            mem[64] = (uint255(stor3[2].field_0) * 0.5) + 168
            if stor1[address(msg.sender)][2]:
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                    require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                    require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                    _105 = mem[64]
                    mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                    mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 2
                    _110 = sha3(mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _105 + -mem[64] + 32])
                    mem[0] = stor[sha3(mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _105 + -mem[64] + 32])]
                    mem[32] = sha3(address(cd[4]), 1)
                    stor1[address(cd[4])][stor[_110]] = 1
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                    require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                    require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                    _141 = mem[64]
                    mem[mem[64]] = address(cd[4])
                    mem[mem[64] + 32] = 96
                    mem[mem[64] + 96] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                    mem[mem[64] + 128 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                    mem[mem[64] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 128] = 0
                    mem[mem[64] + 64] = stor[_110]
                    emit AuthorizedFor(address arg1, string arg2, uint256 arg3):
                                       mem[mem[64] len _141 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + -mem[64] + 128],
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            if floor32((uint255(stor3[2].field_0) * 0.5) + 71) > (uint255(stor3[2].field_0) * 0.5) + 40:
                revert with 0, 
                            32,
                            (uint255(stor3[2].field_0) * 0.5) + 40,
                            Mask(8 * Mask(254, 1, stor3[2].field_0) + -(uint255(stor3[2].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[2].field_0) + -(uint255(stor3[2].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len uint255(stor3[2].field_0) * 0.5], 0, Mask(8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + -(uint255(stor3[2].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + -(uint255(stor3[2].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + -(uint255(stor3[2].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[2].field_0) + -(uint255(stor3[2].field_0) * 0.5) + 40) - 256,
                            Mask(8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + (uint255(stor3[2].field_0) * 0.5) + -Mask(254, 1, stor3[2].field_0) - 40, -(8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + (uint255(stor3[2].field_0) * 0.5) + -Mask(254, 1, stor3[2].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + (uint255(stor3[2].field_0) * 0.5) + -Mask(254, 1, stor3[2].field_0) - 40) - 256
            revert with 0, 
                        32,
                        (uint255(stor3[2].field_0) * 0.5) + 40,
                        'Not authorized. You need the per',
                        0,
                        mem[168 len uint255(stor3[2].field_0) * 0.5],
                        0,
                        Mask(8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + -(uint255(stor3[2].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + -(uint255(stor3[2].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + -(uint255(stor3[2].field_0) * 0.5) - 44) - 256
        if bool(stor3[2].field_0) != 1:
            mem[96] = -128
            mem[64] = 0
            if not stor1[address(msg.sender)][2]:
                revert with memory
                  from 4294967168, 0
                   len -4294967168, 0 - 60
            idx = 0
            while idx < ('cd', 36).length:
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                _106 = mem[64]
                mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 2
                _115 = sha3(mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _106 + -mem[64] + 32])
                mem[0] = stor[sha3(mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _106 + -mem[64] + 32])]
                mem[32] = sha3(address(cd[4]), 1)
                stor1[address(cd[4])][stor[_115]] = 1
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                _142 = mem[64]
                mem[mem[64]] = address(cd[4])
                mem[mem[64] + 32] = 96
                mem[mem[64] + 96] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 128] = 0
                mem[mem[64] + 64] = stor[_115]
                emit AuthorizedFor(address arg1, string arg2, uint256 arg3):
                                   mem[mem[64] len _142 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + -mem[64] + 128],
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        mem[0] = sha3(2, 3)
        idx = 0
        s = 0
        while idx < uint255(stor3[2].field_0) * 0.5:
            mem[idx + 168] = stor3[2][s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[96] = (uint255(stor3[2].field_0) * 0.5) + 40
        mem[64] = (uint255(stor3[2].field_0) * 0.5) + 168
        if stor1[address(msg.sender)][2]:
            idx = 0
            while idx < ('cd', 36).length:
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                _159 = mem[64]
                mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 2
                _162 = sha3(mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _159 + -mem[64] + 32])
                mem[0] = stor[sha3(mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _159 + -mem[64] + 32])]
                mem[32] = sha3(address(cd[4]), 1)
                stor1[address(cd[4])][stor[_162]] = 1
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                _169 = mem[64]
                mem[mem[64]] = address(cd[4])
                mem[mem[64] + 32] = 96
                mem[mem[64] + 96] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 128] = 0
                mem[mem[64] + 64] = stor[_162]
                emit AuthorizedFor(address arg1, string arg2, uint256 arg3):
                                   mem[mem[64] len _169 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + -mem[64] + 128],
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        if floor32((uint255(stor3[2].field_0) * 0.5) + 71) > (uint255(stor3[2].field_0) * 0.5) + 40:
            revert with 0, 
                        32,
                        (uint255(stor3[2].field_0) * 0.5) + 40,
                        Mask(8 * Mask(254, 1, stor3[2].field_0) + -(uint255(stor3[2].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[2].field_0) + -(uint255(stor3[2].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', mem[160 len (uint255(stor3[2].field_0) * 0.5) + 8], 0, Mask(8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + -(uint255(stor3[2].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + -(uint255(stor3[2].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + -(uint255(stor3[2].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[2].field_0) + -(uint255(stor3[2].field_0) * 0.5) + 40) - 256,
                        Mask(8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + (uint255(stor3[2].field_0) * 0.5) + -Mask(254, 1, stor3[2].field_0) - 40, -(8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + (uint255(stor3[2].field_0) * 0.5) + -Mask(254, 1, stor3[2].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + (uint255(stor3[2].field_0) * 0.5) + -Mask(254, 1, stor3[2].field_0) - 40) - 256
        revert with 0, 
                    32,
                    (uint255(stor3[2].field_0) * 0.5) + 40,
                    'Not authorized. You need the per',
                    mem[160 len (uint255(stor3[2].field_0) * 0.5) + 8],
                    0,
                    Mask(8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + -(uint255(stor3[2].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + -(uint255(stor3[2].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[2].field_0) * 0.5) + 71) + -(uint255(stor3[2].field_0) * 0.5) - 44) - 256
    if bool(stor3[2].field_0) == stor3[2].field_1 % 128 < 32:
        revert with 0, 34
    if not bool(stor3[2].field_0):
        mem[168] = Mask(248, 8, stor3[2].field_0)
        mem[96] = stor3[2].field_1 % 128 + 40
        mem[64] = stor3[2].field_1 % 128 + 168
        if stor1[address(msg.sender)][2]:
            idx = 0
            while idx < ('cd', 36).length:
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                _107 = mem[64]
                mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 2
                _119 = sha3(mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _107 + -mem[64] + 32])
                mem[0] = stor[sha3(mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _107 + -mem[64] + 32])]
                mem[32] = sha3(address(cd[4]), 1)
                stor1[address(cd[4])][stor[_119]] = 1
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                _143 = mem[64]
                mem[mem[64]] = address(cd[4])
                mem[mem[64] + 32] = 96
                mem[mem[64] + 96] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 128] = 0
                mem[mem[64] + 64] = stor[_119]
                emit AuthorizedFor(address arg1, string arg2, uint256 arg3):
                                   mem[mem[64] len _143 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + -mem[64] + 128],
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        mem[stor3[2].field_1 % 128 + 236 len floor32(stor3[2].field_1 % 128 + 71)] = 'Not authorized. You need the per', 0, mem[168 len stor3[2].field_1 % 128], 0, Mask(8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44, -(8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44) - 256
        if floor32(stor3[2].field_1 % 128 + 71) <= stor3[2].field_1 % 128 + 40:
            revert with 0, 
                        32,
                        stor3[2].field_1 % 128 + 40,
                        'Not authorized. You need the per',
                        0,
                        mem[168 len stor3[2].field_1 % 128],
                        0,
                        Mask(8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44, -(8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44) - 256
        mem[(2 * stor3[2].field_1 % 128) + 276] = 0
        revert with 0, 
                    32,
                    stor3[2].field_1 % 128 + 40,
                    Mask(8 * stor3[2].field_1 % 128 + 40, -(8 * stor3[2].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len stor3[2].field_1 % 128], 0, Mask(8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44, -(8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44) - 256) << (8 * stor3[2].field_1 % 128 + 40) - 256,
                    mem[(2 * stor3[2].field_1 % 128) + 276 len floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 40]
    if bool(stor3[2].field_0) != 1:
        mem[96] = -128
        mem[64] = 0
        if not stor1[address(msg.sender)][2]:
            revert with memory
              from 4294967168, 0
               len -4294967168, 0 - 60
        idx = 0
        while idx < ('cd', 36).length:
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            _108 = mem[64]
            mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 2
            _124 = sha3(mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _108 + -mem[64] + 32])
            mem[0] = stor[sha3(mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _108 + -mem[64] + 32])]
            mem[32] = sha3(address(cd[4]), 1)
            stor1[address(cd[4])][stor[_124]] = 1
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            _144 = mem[64]
            mem[mem[64]] = address(cd[4])
            mem[mem[64] + 32] = 96
            mem[mem[64] + 96] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 128 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 128] = 0
            mem[mem[64] + 64] = stor[_124]
            emit AuthorizedFor(address arg1, string arg2, uint256 arg3):
                               mem[mem[64] len _144 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + -mem[64] + 128],
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    mem[0] = sha3(2, 3)
    idx = 0
    s = 0
    while idx < stor3[2].field_1 % 128:
        mem[idx + 168] = stor3[2][s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    mem[96] = stor3[2].field_1 % 128 + 40
    mem[64] = stor3[2].field_1 % 128 + 168
    if stor1[address(msg.sender)][2]:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 2
            mem[0] = stor2[call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]]
            mem[32] = sha3(address(cd[4]), 1)
            stor1[address(cd[4])][stor2[call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]]] = 1
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            _170 = mem[64]
            mem[mem[64]] = address(cd[4])
            mem[mem[64] + 32] = 96
            mem[mem[64] + 96] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 128 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 128] = 0
            mem[mem[64] + 64] = stor2[call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]]
            emit AuthorizedFor(address arg1, string arg2, uint256 arg3):
                               mem[mem[64] len _170 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + -mem[64] + 128],
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    mem[stor3[2].field_1 % 128 + 236 len floor32(stor3[2].field_1 % 128 + 71)] = 'Not authorized. You need the per', mem[160 len stor3[2].field_1 % 128 + 8], 0, Mask(8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44, -(8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44) - 256
    if floor32(stor3[2].field_1 % 128 + 71) <= stor3[2].field_1 % 128 + 40:
        revert with 0, 
                    32,
                    stor3[2].field_1 % 128 + 40,
                    'Not authorized. You need the per',
                    mem[160 len stor3[2].field_1 % 128 + 8],
                    0,
                    Mask(8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44, -(8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44) - 256
    mem[(2 * stor3[2].field_1 % 128) + 276] = 0
    revert with 0, 
                32,
                stor3[2].field_1 % 128 + 40,
                Mask(8 * stor3[2].field_1 % 128 + 40, -(8 * stor3[2].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', mem[160 len stor3[2].field_1 % 128 + 8], 0, Mask(8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44, -(8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 44) - 256) << (8 * stor3[2].field_1 % 128 + 40) - 256,
                mem[(2 * stor3[2].field_1 % 128) + 276 len floor32(stor3[2].field_1 % 128 + 71) + -stor3[2].field_1 % 128 - 40]
}

function sub_1ad6084f(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if stor2E17:
        revert with 0, 'Permission is locked.'
    mem[0] = 3
    mem[128] = 'Not authorized. You need the per'
    mem[160] = 0x6d697373696f6e20000000000000000000000000000000000000000000000000
    if bool(stor3[3].field_0):
        if bool(stor3[3].field_0) == uint255(stor3[3].field_0) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor3[3].field_0):
            mem[168] = Mask(248, 8, stor3[3].field_0)
            mem[96] = (uint255(stor3[3].field_0) * 0.5) + 40
            mem[64] = (uint255(stor3[3].field_0) * 0.5) + 168
            if not stor1[address(msg.sender)][3]:
                if floor32((uint255(stor3[3].field_0) * 0.5) + 71) > (uint255(stor3[3].field_0) * 0.5) + 40:
                    revert with 0, 
                                32,
                                (uint255(stor3[3].field_0) * 0.5) + 40,
                                Mask(8 * Mask(254, 1, stor3[3].field_0) + -(uint255(stor3[3].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[3].field_0) + -(uint255(stor3[3].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len uint255(stor3[3].field_0) * 0.5], 0, Mask(8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + -(uint255(stor3[3].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + -(uint255(stor3[3].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + -(uint255(stor3[3].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[3].field_0) + -(uint255(stor3[3].field_0) * 0.5) + 40) - 256,
                                Mask(8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + (uint255(stor3[3].field_0) * 0.5) + -Mask(254, 1, stor3[3].field_0) - 40, -(8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + (uint255(stor3[3].field_0) * 0.5) + -Mask(254, 1, stor3[3].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + (uint255(stor3[3].field_0) * 0.5) + -Mask(254, 1, stor3[3].field_0) - 40) - 256
                revert with 0, 
                            32,
                            (uint255(stor3[3].field_0) * 0.5) + 40,
                            'Not authorized. You need the per',
                            0,
                            mem[168 len uint255(stor3[3].field_0) * 0.5],
                            0,
                            Mask(8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + -(uint255(stor3[3].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + -(uint255(stor3[3].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + -(uint255(stor3[3].field_0) * 0.5) - 44) - 256
            if owner == address(cd[4]):
                revert with 0, 'Can't unauthorize owner'
            idx = 0
            while idx < ('cd', 36).length:
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                _121 = mem[64]
                mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 2
                _126 = sha3(mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _121 + -mem[64] + 32])
                mem[0] = stor[sha3(mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _121 + -mem[64] + 32])]
                mem[32] = sha3(address(cd[4]), 1)
                stor1[address(cd[4])][stor[_126]] = 0
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                _149 = mem[64]
                mem[mem[64]] = address(cd[4])
                mem[mem[64] + 32] = 96
                mem[mem[64] + 96] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 128] = 0
                mem[mem[64] + 64] = stor[_126]
                emit UnauthorizedFor(address arg1, string arg2, uint256 arg3):
                                     mem[mem[64] len _149 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + -mem[64] + 128],
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if bool(stor3[3].field_0) != 1:
                mem[96] = -128
                mem[64] = 0
                if not stor1[address(msg.sender)][3]:
                    revert with memory
                      from 4294967168, 0
                       len -4294967168, 0 - 60
                if owner == address(cd[4]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '', 0, 0
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                    require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                    require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                    _122 = mem[64]
                    mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                    mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 2
                    _131 = sha3(mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _122 + -mem[64] + 32])
                    mem[0] = stor[sha3(mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _122 + -mem[64] + 32])]
                    mem[32] = sha3(address(cd[4]), 1)
                    stor1[address(cd[4])][stor[_131]] = 0
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                    require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                    require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                    _154 = mem[64]
                    mem[mem[64]] = address(cd[4])
                    mem[mem[64] + 32] = 96
                    mem[mem[64] + 96] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                    mem[mem[64] + 128 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                    mem[mem[64] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 128] = 0
                    mem[mem[64] + 64] = stor[_131]
                    emit UnauthorizedFor(address arg1, string arg2, uint256 arg3):
                                         mem[mem[64] len _154 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + -mem[64] + 128],
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                mem[0] = sha3(3, 3)
                idx = 0
                s = 0
                while idx < uint255(stor3[3].field_0) * 0.5:
                    mem[idx + 168] = stor3[3][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[96] = (uint255(stor3[3].field_0) * 0.5) + 40
                mem[64] = (uint255(stor3[3].field_0) * 0.5) + 168
                if not stor1[address(msg.sender)][3]:
                    if floor32((uint255(stor3[3].field_0) * 0.5) + 71) > (uint255(stor3[3].field_0) * 0.5) + 40:
                        revert with 0, 
                                    32,
                                    (uint255(stor3[3].field_0) * 0.5) + 40,
                                    Mask(8 * Mask(254, 1, stor3[3].field_0) + -(uint255(stor3[3].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[3].field_0) + -(uint255(stor3[3].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', mem[160 len (uint255(stor3[3].field_0) * 0.5) + 8], 0, Mask(8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + -(uint255(stor3[3].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + -(uint255(stor3[3].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + -(uint255(stor3[3].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[3].field_0) + -(uint255(stor3[3].field_0) * 0.5) + 40) - 256,
                                    Mask(8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + (uint255(stor3[3].field_0) * 0.5) + -Mask(254, 1, stor3[3].field_0) - 40, -(8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + (uint255(stor3[3].field_0) * 0.5) + -Mask(254, 1, stor3[3].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + (uint255(stor3[3].field_0) * 0.5) + -Mask(254, 1, stor3[3].field_0) - 40) - 256
                    revert with 0, 
                                32,
                                (uint255(stor3[3].field_0) * 0.5) + 40,
                                'Not authorized. You need the per',
                                mem[160 len (uint255(stor3[3].field_0) * 0.5) + 8],
                                0,
                                Mask(8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + -(uint255(stor3[3].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + -(uint255(stor3[3].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[3].field_0) * 0.5) + 71) + -(uint255(stor3[3].field_0) * 0.5) - 44) - 256
                if owner == address(cd[4]):
                    revert with 0, 'Can't unauthorize owner'
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                    require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                    require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                    mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                    mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 2
                    mem[0] = stor2[call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]]
                    mem[32] = sha3(address(cd[4]), 1)
                    stor1[address(cd[4])][stor2[call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]]] = 0
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                    require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                    require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                    _185 = mem[64]
                    mem[mem[64]] = address(cd[4])
                    mem[mem[64] + 32] = 96
                    mem[mem[64] + 96] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                    mem[mem[64] + 128 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                    mem[mem[64] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 128] = 0
                    mem[mem[64] + 64] = stor2[call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]]
                    emit UnauthorizedFor(address arg1, string arg2, uint256 arg3):
                                         mem[mem[64] len _185 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + -mem[64] + 128],
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
    if bool(stor3[3].field_0) == stor3[3].field_1 % 128 < 32:
        revert with 0, 34
    if not bool(stor3[3].field_0):
        mem[168] = Mask(248, 8, stor3[3].field_0)
        mem[96] = stor3[3].field_1 % 128 + 40
        mem[64] = stor3[3].field_1 % 128 + 168
        if stor1[address(msg.sender)][3]:
            if owner == address(cd[4]):
                revert with 0, 'Can't unauthorize owner'
            idx = 0
            while idx < ('cd', 36).length:
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                _123 = mem[64]
                mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 2
                _135 = sha3(mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _123 + -mem[64] + 32])
                mem[0] = stor[sha3(mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _123 + -mem[64] + 32])]
                mem[32] = sha3(address(cd[4]), 1)
                stor1[address(cd[4])][stor[_135]] = 0
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                _155 = mem[64]
                mem[mem[64]] = address(cd[4])
                mem[mem[64] + 32] = 96
                mem[mem[64] + 96] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 128] = 0
                mem[mem[64] + 64] = stor[_135]
                emit UnauthorizedFor(address arg1, string arg2, uint256 arg3):
                                     mem[mem[64] len _155 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + -mem[64] + 128],
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        mem[stor3[3].field_1 % 128 + 236 len floor32(stor3[3].field_1 % 128 + 71)] = 'Not authorized. You need the per', 0, mem[168 len stor3[3].field_1 % 128], 0, Mask(8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44, -(8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44) - 256
        if floor32(stor3[3].field_1 % 128 + 71) <= stor3[3].field_1 % 128 + 40:
            revert with 0, 
                        32,
                        stor3[3].field_1 % 128 + 40,
                        'Not authorized. You need the per',
                        0,
                        mem[168 len stor3[3].field_1 % 128],
                        0,
                        Mask(8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44, -(8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44) - 256
        mem[(2 * stor3[3].field_1 % 128) + 276] = 0
        revert with 0, 
                    32,
                    stor3[3].field_1 % 128 + 40,
                    Mask(8 * stor3[3].field_1 % 128 + 40, -(8 * stor3[3].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', 0, mem[168 len stor3[3].field_1 % 128], 0, Mask(8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44, -(8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44) - 256) << (8 * stor3[3].field_1 % 128 + 40) - 256,
                    mem[(2 * stor3[3].field_1 % 128) + 276 len floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 40]
    if bool(stor3[3].field_0) != 1:
        mem[96] = -128
        mem[64] = 0
        if not stor1[address(msg.sender)][3]:
            revert with memory
              from 4294967168, 0
               len -4294967168, 0 - 60
        if owner == address(cd[4]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '', 0, 0
        idx = 0
        while idx < ('cd', 36).length:
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 2
            mem[0] = stor2[call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]]
            mem[32] = sha3(address(cd[4]), 1)
            stor1[address(cd[4])][stor2[call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]]] = 0
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            _160 = mem[64]
            mem[mem[64]] = address(cd[4])
            mem[mem[64] + 32] = 96
            mem[mem[64] + 96] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 128 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 128] = 0
            mem[mem[64] + 64] = stor2[call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]]
            emit UnauthorizedFor(address arg1, string arg2, uint256 arg3):
                                 mem[mem[64] len _160 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + -mem[64] + 128],
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    mem[0] = sha3(3, 3)
    idx = 0
    s = 0
    while idx < stor3[3].field_1 % 128:
        mem[idx + 168] = stor3[3][s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    mem[96] = stor3[3].field_1 % 128 + 40
    mem[64] = stor3[3].field_1 % 128 + 168
    if stor1[address(msg.sender)][3]:
        if owner == address(cd[4]):
            revert with 0, 'Can't unauthorize owner'
        idx = 0
        while idx < ('cd', 36).length:
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            _176 = mem[64]
            mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 2
            _182 = sha3(mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _176 + -mem[64] + 32])
            mem[0] = stor[sha3(mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _176 + -mem[64] + 32])]
            mem[32] = sha3(address(cd[4]), 1)
            stor1[address(cd[4])][stor[_182]] = 0
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            _186 = mem[64]
            mem[mem[64]] = address(cd[4])
            mem[mem[64] + 32] = 96
            mem[mem[64] + 96] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 128 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 128] = 0
            mem[mem[64] + 64] = stor[_182]
            emit UnauthorizedFor(address arg1, string arg2, uint256 arg3):
                                 mem[mem[64] len _186 + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + -mem[64] + 128],
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    mem[stor3[3].field_1 % 128 + 236 len floor32(stor3[3].field_1 % 128 + 71)] = 'Not authorized. You need the per', mem[160 len stor3[3].field_1 % 128 + 8], 0, Mask(8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44, -(8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44) - 256
    if floor32(stor3[3].field_1 % 128 + 71) <= stor3[3].field_1 % 128 + 40:
        revert with 0, 
                    32,
                    stor3[3].field_1 % 128 + 40,
                    'Not authorized. You need the per',
                    mem[160 len stor3[3].field_1 % 128 + 8],
                    0,
                    Mask(8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44, -(8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44) - 256
    mem[(2 * stor3[3].field_1 % 128) + 276] = 0
    revert with 0, 
                32,
                stor3[3].field_1 % 128 + 40,
                Mask(8 * stor3[3].field_1 % 128 + 40, -(8 * stor3[3].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', mem[160 len stor3[3].field_1 % 128 + 8], 0, Mask(8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44, -(8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 44) - 256) << (8 * stor3[3].field_1 % 128 + 40) - 256,
                mem[(2 * stor3[3].field_1 % 128) + 276 len floor32(stor3[3].field_1 % 128 + 71) + -stor3[3].field_1 % 128 - 40]
}

function sub_971563fc(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    require arg2 == uint64(arg2)
    if storC593:
        revert with 0, 'Permission is locked.'
    mem[0] = 6
    mem[ceil32(ceil32(arg1.length)) + 129] = 'Not authorized. You need the per'
    mem[ceil32(ceil32(arg1.length)) + 161] = 0x6d697373696f6e20000000000000000000000000000000000000000000000000
    if bool(stor3[6].field_0):
        if bool(stor3[6].field_0) == uint255(stor3[6].field_0) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor3[6].field_0):
            mem[ceil32(ceil32(arg1.length)) + 169] = Mask(248, 8, stor3[6].field_0)
            if not stor1[address(msg.sender)][6]:
                if floor32((uint255(stor3[6].field_0) * 0.5) + 71) > (uint255(stor3[6].field_0) * 0.5) + 40:
                    revert with 0, 
                                32,
                                (uint255(stor3[6].field_0) * 0.5) + 40,
                                Mask(8 * Mask(254, 1, stor3[6].field_0) + -(uint255(stor3[6].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[6].field_0) + -(uint255(stor3[6].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', 0, mem[ceil32(ceil32(arg1.length)) + 169 len uint255(stor3[6].field_0) * 0.5], 0, Mask(8 * floor32((uint255(stor3[6].field_0) * 0.5) + 71) + -(uint255(stor3[6].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[6].field_0) * 0.5) + 71) + -(uint255(stor3[6].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[6].field_0) * 0.5) + 71) + -(uint255(stor3[6].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[6].field_0) + -(uint255(stor3[6].field_0) * 0.5) + 40) - 256,
                                Mask(8 * floor32((uint255(stor3[6].field_0) * 0.5) + 71) + (uint255(stor3[6].field_0) * 0.5) + -Mask(254, 1, stor3[6].field_0) - 40, -(8 * floor32((uint255(stor3[6].field_0) * 0.5) + 71) + (uint255(stor3[6].field_0) * 0.5) + -Mask(254, 1, stor3[6].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[6].field_0) * 0.5) + 71) + (uint255(stor3[6].field_0) * 0.5) + -Mask(254, 1, stor3[6].field_0) - 40) - 256
                revert with 0, 
                            32,
                            (uint255(stor3[6].field_0) * 0.5) + 40,
                            'Not authorized. You need the per',
                            0,
                            mem[ceil32(ceil32(arg1.length)) + 169 len uint255(stor3[6].field_0) * 0.5],
                            0,
                            Mask(8 * floor32((uint255(stor3[6].field_0) * 0.5) + 71) + -(uint255(stor3[6].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[6].field_0) * 0.5) + 71) + -(uint255(stor3[6].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[6].field_0) * 0.5) + 71) + -(uint255(stor3[6].field_0) * 0.5) - 44) - 256
            if uint64(block.timestamp) > -uint64(arg2) + test266151307():
                revert with 0, 17
            uint8(stor4[stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 2)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, (uint255(stor3[6].field_0) * 0.5) + 40) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]].field_0) = 1
            uint64(stor4[stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 2)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, (uint255(stor3[6].field_0) * 0.5) + 40) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]].field_8) = uint64(uint64(arg2) + uint64(block.timestamp))
            Mask(184, 0, stor4[stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 2)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, (uint255(stor3[6].field_0) * 0.5) + 40) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]].field_72) = 0
            emit PermissionLocked(Array(len=arg1.length, data=arg1[all]), stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 2)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, (uint255(stor3[6].field_0) * 0.5) + 40) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256], uint64(uint64(arg2) + uint64(block.timestamp)));
        else:
            if bool(stor3[6].field_0) == 1:
                idx = 0
                s = 0
                while idx < uint255(stor3[6].field_0) * 0.5:
                    mem[idx + ceil32(ceil32(arg1.length)) + 169] = stor3[6][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if not stor1[address(msg.sender)][6]:
                    if floor32((uint255(stor3[6].field_0) * 0.5) + 71) > (uint255(stor3[6].field_0) * 0.5) + 40:
                        revert with 0, 
                                    32,
                                    (uint255(stor3[6].field_0) * 0.5) + 40,
                                    Mask(8 * Mask(254, 1, stor3[6].field_0) + -(uint255(stor3[6].field_0) * 0.5) + 40, -(8 * Mask(254, 1, stor3[6].field_0) + -(uint255(stor3[6].field_0) * 0.5) + 40) + 256, 'Not authorized. You need the per', mem[ceil32(ceil32(arg1.length)) + 161 len (uint255(stor3[6].field_0) * 0.5) + 8], 0, Mask(8 * floor32((uint255(stor3[6].field_0) * 0.5) + 71) + -(uint255(stor3[6].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[6].field_0) * 0.5) + 71) + -(uint255(stor3[6].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[6].field_0) * 0.5) + 71) + -(uint255(stor3[6].field_0) * 0.5) - 44) - 256) << (8 * Mask(254, 1, stor3[6].field_0) + -(uint255(stor3[6].field_0) * 0.5) + 40) - 256,
                                    Mask(8 * floor32((uint255(stor3[6].field_0) * 0.5) + 71) + (uint255(stor3[6].field_0) * 0.5) + -Mask(254, 1, stor3[6].field_0) - 40, -(8 * floor32((uint255(stor3[6].field_0) * 0.5) + 71) + (uint255(stor3[6].field_0) * 0.5) + -Mask(254, 1, stor3[6].field_0) - 40) + 256, 0) << (8 * floor32((uint255(stor3[6].field_0) * 0.5) + 71) + (uint255(stor3[6].field_0) * 0.5) + -Mask(254, 1, stor3[6].field_0) - 40) - 256
                    revert with 0, 
                                32,
                                (uint255(stor3[6].field_0) * 0.5) + 40,
                                'Not authorized. You need the per',
                                mem[ceil32(ceil32(arg1.length)) + 161 len (uint255(stor3[6].field_0) * 0.5) + 8],
                                0,
                                Mask(8 * floor32((uint255(stor3[6].field_0) * 0.5) + 71) + -(uint255(stor3[6].field_0) * 0.5) - 44, -(8 * floor32((uint255(stor3[6].field_0) * 0.5) + 71) + -(uint255(stor3[6].field_0) * 0.5) - 44) + 256, 32) << (8 * floor32((uint255(stor3[6].field_0) * 0.5) + 71) + -(uint255(stor3[6].field_0) * 0.5) - 44) - 256
                if uint64(block.timestamp) > -uint64(arg2) + test266151307():
                    revert with 0, 17
                uint8(stor4[stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 2)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, (uint255(stor3[6].field_0) * 0.5) + 40) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]].field_0) = 1
                uint64(stor4[stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 2)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, (uint255(stor3[6].field_0) * 0.5) + 40) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]].field_8) = uint64(uint64(arg2) + uint64(block.timestamp))
                Mask(184, 0, stor4[stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 2)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, (uint255(stor3[6].field_0) * 0.5) + 40) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]].field_72) = 0
                emit PermissionLocked(Array(len=arg1.length, data=arg1[all]), stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 2)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, (uint255(stor3[6].field_0) * 0.5) + 40) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256], uint64(uint64(arg2) + uint64(block.timestamp)));
            else:
                mem[ceil32(ceil32(arg1.length)) + 97] = -ceil32(ceil32(arg1.length)) - 129
                mem[64] = 0
                if not stor1[address(msg.sender)][6]:
                    mem[0] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[4] = 32
                    mem[36] = -ceil32(ceil32(arg1.length)) - 129
                    mem[68 len floor32(-ceil32(ceil32(arg1.length)) - 98)] = 'Not authorized. You need the per', 0x6d697373696f6e20000000000000000000000000000000000000000000000000, mem[ceil32(ceil32(arg1.length)) + 193 len floor32(-ceil32(ceil32(arg1.length)) - 98) - 64]
                    if floor32(-ceil32(ceil32(arg1.length)) - 98) > -ceil32(ceil32(arg1.length)) - 129:
                        mem[-ceil32(ceil32(arg1.length)) - 61] = 0
                    revert with memory
                      from uint32(-ceil32(ceil32(arg1.length)) - 129), 0
                       len floor32(-ceil32(ceil32(arg1.length)) - 98) + -uint32(-ceil32(ceil32(arg1.length)) - 129), 0 + 68
                mem[0 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, -ceil32(ceil32(arg1.length)) - 129) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                mem[arg1.length] = 2
                if uint64(block.timestamp) > -uint64(arg2) + test266151307():
                    revert with 0, 17
                uint8(stor4[stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 2)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, -ceil32(ceil32(arg1.length)) - 129) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]].field_0) = 1
                uint64(stor4[stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 2)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, -ceil32(ceil32(arg1.length)) - 129) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]].field_8) = uint64(uint64(arg2) + uint64(block.timestamp))
                Mask(184, 0, stor4[stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 2)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, -ceil32(ceil32(arg1.length)) - 129) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]].field_72) = 0
                mem[160] = arg1.length
                mem[192 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, -ceil32(ceil32(arg1.length)) - 129) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                if ceil32(arg1.length) > arg1.length:
                    if ceil32(arg1.length) <= arg1.length:
                        mem[128] = uint64(uint64(arg2) + uint64(block.timestamp))
                        emit PermissionLocked(string arg1, uint256 arg2, uint64 arg3):
                                              Array(len=mem[128 len ceil32(ceil32(arg1.length)) + 1], data='Not authorized. You need the per', Mask(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 0x6d697373696f6e20000000000000000000000000000000000000000000000000) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256),
                                              stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 2)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, -ceil32(ceil32(arg1.length)) - 129) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256],
                    else:
                        mem[arg1.length + 192] = 0
                        mem[128] = uint64(uint64(arg2) + uint64(block.timestamp))
                        emit PermissionLocked(string arg1, uint256 arg2, uint64 arg3):
                                              Array(len=mem[128 len ceil32(ceil32(arg1.length)) + 1], data='Not authorized. You need the per', Mask(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31, -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31) + 256, 0x6d697373696f6e20000000000000000000000000000000000000000000000000) >> -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31) + 256, mem[arg1.length + 192 len ceil32(arg1.length) - arg1.length]),
                                              stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 2)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, -ceil32(ceil32(arg1.length)) - 129) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256],
                else:
                    if ceil32(arg1.length) <= arg1.length:
                        mem[96] = stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 2)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, -ceil32(ceil32(arg1.length)) - 129) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]
                        mem[128] = uint64(uint64(arg2) + uint64(block.timestamp))
                        emit PermissionLocked(string arg1, uint256 arg2, uint64 arg3):
                                              Array(len=-ceil32(ceil32(arg1.length)) - 129, data='Not authorized. You need the per', Mask(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 0x6d697373696f6e20000000000000000000000000000000000000000000000000) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256),
                                              mem[96 len ceil32(ceil32(arg1.length)) + 1],
                    else:
                        mem[arg1.length + 192] = 0
                        mem[96] = stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 2)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, -ceil32(ceil32(arg1.length)) - 129) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]
                        mem[128] = uint64(uint64(arg2) + uint64(block.timestamp))
                        emit PermissionLocked(string arg1, uint256 arg2, uint64 arg3):
                                              Array(len=-ceil32(ceil32(arg1.length)) - 129, data='Not authorized. You need the per', Mask(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31, -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31) + 256, 0x6d697373696f6e20000000000000000000000000000000000000000000000000) >> -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31) + 256, mem[arg1.length + 192 len ceil32(arg1.length) - arg1.length]),
                                              mem[96 len ceil32(ceil32(arg1.length)) + 1],
    else:
        if bool(stor3[6].field_0) == stor3[6].field_1 % 128 < 32:
            revert with 0, 34
        if not bool(stor3[6].field_0):
            mem[ceil32(ceil32(arg1.length)) + 169] = Mask(248, 8, stor3[6].field_0)
            if not stor1[address(msg.sender)][6]:
                mem[ceil32(ceil32(arg1.length)) + stor3[6].field_1 % 128 + 237 len floor32(stor3[6].field_1 % 128 + 71)] = 'Not authorized. You need the per', 0, mem[ceil32(ceil32(arg1.length)) + 169 len stor3[6].field_1 % 128], 0, Mask(8 * floor32(stor3[6].field_1 % 128 + 71) + -stor3[6].field_1 % 128 - 44, -(8 * floor32(stor3[6].field_1 % 128 + 71) + -stor3[6].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[6].field_1 % 128 + 71) + -stor3[6].field_1 % 128 - 44) - 256
                if floor32(stor3[6].field_1 % 128 + 71) <= stor3[6].field_1 % 128 + 40:
                    revert with 0, 
                                32,
                                stor3[6].field_1 % 128 + 40,
                                'Not authorized. You need the per',
                                0,
                                mem[ceil32(ceil32(arg1.length)) + 169 len stor3[6].field_1 % 128],
                                0,
                                Mask(8 * floor32(stor3[6].field_1 % 128 + 71) + -stor3[6].field_1 % 128 - 44, -(8 * floor32(stor3[6].field_1 % 128 + 71) + -stor3[6].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[6].field_1 % 128 + 71) + -stor3[6].field_1 % 128 - 44) - 256
                mem[(2 * stor3[6].field_1 % 128) + ceil32(ceil32(arg1.length)) + 277] = 0
                revert with 0, 
                            32,
                            stor3[6].field_1 % 128 + 40,
                            Mask(8 * stor3[6].field_1 % 128 + 40, -(8 * stor3[6].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', 0, mem[ceil32(ceil32(arg1.length)) + 169 len stor3[6].field_1 % 128], 0, Mask(8 * floor32(stor3[6].field_1 % 128 + 71) + -stor3[6].field_1 % 128 - 44, -(8 * floor32(stor3[6].field_1 % 128 + 71) + -stor3[6].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[6].field_1 % 128 + 71) + -stor3[6].field_1 % 128 - 44) - 256) << (8 * stor3[6].field_1 % 128 + 40) - 256,
                            mem[ceil32(ceil32(arg1.length)) + (2 * stor3[6].field_1 % 128) + 277 len floor32(stor3[6].field_1 % 128 + 71) + -stor3[6].field_1 % 128 - 40]
            if uint64(block.timestamp) > -uint64(arg2) + test266151307():
                revert with 0, 17
            uint8(stor4[stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 2)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, stor3[6].field_1 % 128 + 40) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]].field_0) = 1
            uint64(stor4[stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 2)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, stor3[6].field_1 % 128 + 40) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]].field_8) = uint64(uint64(arg2) + uint64(block.timestamp))
            Mask(184, 0, stor4[stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 2)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, stor3[6].field_1 % 128 + 40) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]].field_72) = 0
            emit PermissionLocked(Array(len=arg1.length, data=arg1[all]), stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 2)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, stor3[6].field_1 % 128 + 40) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256], uint64(uint64(arg2) + uint64(block.timestamp)));
        else:
            if bool(stor3[6].field_0) == 1:
                idx = 0
                s = 0
                while idx < stor3[6].field_1 % 128:
                    mem[idx + ceil32(ceil32(arg1.length)) + 169] = stor3[6][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if not stor1[address(msg.sender)][6]:
                    mem[ceil32(ceil32(arg1.length)) + stor3[6].field_1 % 128 + 237 len floor32(stor3[6].field_1 % 128 + 71)] = 'Not authorized. You need the per', mem[ceil32(ceil32(arg1.length)) + 161 len stor3[6].field_1 % 128 + 8], 0, Mask(8 * floor32(stor3[6].field_1 % 128 + 71) + -stor3[6].field_1 % 128 - 44, -(8 * floor32(stor3[6].field_1 % 128 + 71) + -stor3[6].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[6].field_1 % 128 + 71) + -stor3[6].field_1 % 128 - 44) - 256
                    if floor32(stor3[6].field_1 % 128 + 71) <= stor3[6].field_1 % 128 + 40:
                        revert with 0, 
                                    32,
                                    stor3[6].field_1 % 128 + 40,
                                    'Not authorized. You need the per',
                                    mem[ceil32(ceil32(arg1.length)) + 161 len stor3[6].field_1 % 128 + 8],
                                    0,
                                    Mask(8 * floor32(stor3[6].field_1 % 128 + 71) + -stor3[6].field_1 % 128 - 44, -(8 * floor32(stor3[6].field_1 % 128 + 71) + -stor3[6].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[6].field_1 % 128 + 71) + -stor3[6].field_1 % 128 - 44) - 256
                    mem[(2 * stor3[6].field_1 % 128) + ceil32(ceil32(arg1.length)) + 277] = 0
                    revert with 0, 
                                32,
                                stor3[6].field_1 % 128 + 40,
                                Mask(8 * stor3[6].field_1 % 128 + 40, -(8 * stor3[6].field_1 % 128 + 40) + 256, 'Not authorized. You need the per', mem[ceil32(ceil32(arg1.length)) + 161 len stor3[6].field_1 % 128 + 8], 0, Mask(8 * floor32(stor3[6].field_1 % 128 + 71) + -stor3[6].field_1 % 128 - 44, -(8 * floor32(stor3[6].field_1 % 128 + 71) + -stor3[6].field_1 % 128 - 44) + 256, 32) << (8 * floor32(stor3[6].field_1 % 128 + 71) + -stor3[6].field_1 % 128 - 44) - 256) << (8 * stor3[6].field_1 % 128 + 40) - 256,
                                mem[ceil32(ceil32(arg1.length)) + (2 * stor3[6].field_1 % 128) + 277 len floor32(stor3[6].field_1 % 128 + 71) + -stor3[6].field_1 % 128 - 40]
                if uint64(block.timestamp) > -uint64(arg2) + test266151307():
                    revert with 0, 17
                uint8(stor4[stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 2)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, stor3[6].field_1 % 128 + 40) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]].field_0) = 1
                uint64(stor4[stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 2)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, stor3[6].field_1 % 128 + 40) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]].field_8) = uint64(uint64(arg2) + uint64(block.timestamp))
                Mask(184, 0, stor4[stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 2)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, stor3[6].field_1 % 128 + 40) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]].field_72) = 0
                emit PermissionLocked(Array(len=arg1.length, data=arg1[all]), stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 2)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, stor3[6].field_1 % 128 + 40) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256], uint64(uint64(arg2) + uint64(block.timestamp)));
            else:
                mem[ceil32(ceil32(arg1.length)) + 97] = -ceil32(ceil32(arg1.length)) - 129
                mem[64] = 0
                if not stor1[address(msg.sender)][6]:
                    mem[0] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[4] = 32
                    mem[36] = -ceil32(ceil32(arg1.length)) - 129
                    mem[68 len floor32(-ceil32(ceil32(arg1.length)) - 98)] = 'Not authorized. You need the per', 0x6d697373696f6e20000000000000000000000000000000000000000000000000, mem[ceil32(ceil32(arg1.length)) + 193 len floor32(-ceil32(ceil32(arg1.length)) - 98) - 64]
                    if floor32(-ceil32(ceil32(arg1.length)) - 98) > -ceil32(ceil32(arg1.length)) - 129:
                        mem[-ceil32(ceil32(arg1.length)) - 61] = 0
                    revert with memory
                      from uint32(-ceil32(ceil32(arg1.length)) - 129), 0
                       len floor32(-ceil32(ceil32(arg1.length)) - 98) + -uint32(-ceil32(ceil32(arg1.length)) - 129), 0 + 68
                mem[0 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, -ceil32(ceil32(arg1.length)) - 129) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                mem[arg1.length] = 2
                if uint64(block.timestamp) > -uint64(arg2) + test266151307():
                    revert with 0, 17
                uint8(stor4[stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 2)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, -ceil32(ceil32(arg1.length)) - 129) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]].field_0) = 1
                uint64(stor4[stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 2)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, -ceil32(ceil32(arg1.length)) - 129) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]].field_8) = uint64(uint64(arg2) + uint64(block.timestamp))
                Mask(184, 0, stor4[stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 2)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, -ceil32(ceil32(arg1.length)) - 129) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]].field_72) = 0
                mem[160] = arg1.length
                mem[192 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, -ceil32(ceil32(arg1.length)) - 129) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                if ceil32(arg1.length) <= arg1.length:
                    if ceil32(arg1.length) <= arg1.length:
                        mem[128] = uint64(uint64(arg2) + uint64(block.timestamp))
                        emit PermissionLocked(string arg1, uint256 arg2, uint64 arg3):
                                              Array(len=mem[128 len ceil32(ceil32(arg1.length)) + 1], data='Not authorized. You need the per', Mask(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 0x6d697373696f6e20000000000000000000000000000000000000000000000000) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256),
                                              stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 2)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, -ceil32(ceil32(arg1.length)) - 129) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256],
                    else:
                        mem[arg1.length + 192] = 0
                        mem[128] = uint64(uint64(arg2) + uint64(block.timestamp))
                        emit PermissionLocked(string arg1, uint256 arg2, uint64 arg3):
                                              Array(len=mem[128 len ceil32(ceil32(arg1.length)) + 1], data='Not authorized. You need the per', Mask(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31, -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31) + 256, 0x6d697373696f6e20000000000000000000000000000000000000000000000000) >> -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31) + 256, mem[arg1.length + 192 len ceil32(arg1.length) - arg1.length]),
                                              stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 2)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, -ceil32(ceil32(arg1.length)) - 129) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256],
                else:
                    if ceil32(arg1.length) <= arg1.length:
                        mem[96] = stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 2)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, -ceil32(ceil32(arg1.length)) - 129) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]
                        mem[128] = uint64(uint64(arg2) + uint64(block.timestamp))
                        emit PermissionLocked(string arg1, uint256 arg2, uint64 arg3):
                                              Array(len=-ceil32(ceil32(arg1.length)) - 129, data='Not authorized. You need the per', Mask(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 0x6d697373696f6e20000000000000000000000000000000000000000000000000) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256),
                                              mem[96 len ceil32(ceil32(arg1.length)) + 1],
                    else:
                        mem[arg1.length + 192] = 0
                        mem[96] = stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 2)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, -ceil32(ceil32(arg1.length)) - 129) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]
                        mem[128] = uint64(uint64(arg2) + uint64(block.timestamp))
                        emit PermissionLocked(string arg1, uint256 arg2, uint64 arg3):
                                              Array(len=-ceil32(ceil32(arg1.length)) - 129, data='Not authorized. You need the per', Mask(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31, -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31) + 256, 0x6d697373696f6e20000000000000000000000000000000000000000000000000) >> -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31) + 256, mem[arg1.length + 192 len ceil32(arg1.length) - arg1.length]),
                                              mem[96 len ceil32(ceil32(arg1.length)) + 1],
}



}
