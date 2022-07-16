contract main {




// =====================  Runtime code  =====================


#
#  - excludePresaleAddresses(address arg1, address arg2)
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - airdrop(address[] arg1, uint256[] arg2)
#  - setFeeReceivers(address arg1, address arg2, address arg3)
#  - _fallback()
#
const name = 'Last Man Standing', 0

const decimals = 9

const symbol = '', 0


address owner;
address stor1;
address stor2;
address stor3;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 stor7;
mapping of uint8 stor8;
mapping of uint8 stor9;
uint256 stor10; offset 1
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
address stor20;
address stor21;
address sub_a497ab1cAddress;
uint256 stor23;
uint256 stor24;
address routerAddress;
mapping of uint8 stor27;
address pairAddress;
uint256 launchedAt;
uint256 launchedTime;
uint256 deadBlocks;
uint8 stor32;
uint8 swapEnabled; offset 8
uint256 stor32; offset 24
uint256 stor32; offset 16
uint256 swapThreshold;
uint8 stor34;

function swapThreshold() {
    return swapThreshold
}

function totalSupply() {
    return totalSupply
}

function launchedTime() {
    return launchedTime
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function sub_a497ab1c(?) {
    return sub_a497ab1cAddress
}

function pair() {
    return pairAddress
}

function launchedAt() {
    return launchedAt
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function marketingFeeReceiver() {
    return marketingFeeReceiverAddress
}

function router() {
    return routerAddress
}

function deadBlocks() {
    return deadBlocks
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
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

function getCirculatingSupply() {
    if balanceOf[stor2] > !balanceOf[stor3]:
        revert with 0, 17
    if totalSupply < balanceOf[stor2] + balanceOf[stor3]:
        revert with 0, 17
    return (totalSupply - balanceOf[stor2] - balanceOf[stor3])
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if launchedAt > !deadBlocks:
        revert with 0, 17
    if launchedAt + deadBlocks < block.number:
        return stor15
    if stor16 < 1:
        revert with 0, 17
    return (stor16 - 1)
}

function openTrading(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not uint8(stor32.field_0)
    require arg1 < 20
    deadBlocks = arg1
    uint8(stor32.field_0) = 1
    launchedAt = block.number
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if balanceOf[stor2] > !balanceOf[stor3]:
        revert with 0, 17
    if totalSupply < balanceOf[stor2] + balanceOf[stor3]:
        revert with 0, 17
    if arg1 and balanceOf[stor28] > -1 / arg1:
        revert with 0, 17
    if not totalSupply - balanceOf[stor2] - balanceOf[stor3]:
        revert with 0, 18
    return (arg1 * balanceOf[stor28] / totalSupply - balanceOf[stor2] - balanceOf[stor3])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balanceOf[stor2] > !balanceOf[stor3]:
        revert with 0, 17
    if totalSupply < balanceOf[stor2] + balanceOf[stor3]:
        revert with 0, 17
    if arg2 and balanceOf[stor28] > -1 / arg2:
        revert with 0, 17
    if not totalSupply - balanceOf[stor2] - balanceOf[stor3]:
        revert with 0, 18
    return (arg2 * balanceOf[stor28] / totalSupply - balanceOf[stor2] - balanceOf[stor3] > arg1)
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor23 = arg1
    stor24 = arg2
    mem[256] = 6
    mem[288] = 0x6001a56ff4000000000000000000000000000000000000000000000000000 * 3600
    mem[192] = 256
    mem[224] = arg1
    mem[96] = 192
    mem[384] = 11
    mem[416] = 0x44656e6f6d696e61746f72000000000000000000000000000000000000000000
    mem[320] = 384
    mem[352] = arg2
    mem[128] = 320
    mem[64] = 544
    mem[512] = 0
    mem[448] = 512
    mem[480] = 0
    mem[160] = 448
    mem[544] = 64
    mem[608] = 16
    mem[640] = 'Target Liquidity' << 128
    mem[576] = 128
    idx = 0
    s = 96
    t = 768
    u = 672
    while idx < 3:
        mem[u] = t - 672
        _15 = mem[s]
        _16 = mem[mem[s]]
        mem[t] = 64
        _17 = mem[_16]
        mem[t + 64] = mem[_16]
        v = 0
        while v < _17:
            mem[v + t + 96] = mem[v + _16 + 32]
            v = v + 32
            continue 
        if ceil32(_17) > _17:
            mem[t + _17 + 96] = 0
        mem[t + 32] = mem[_15 + 32]
        idx = idx + 1
        s = s + 32
        t = ceil32(_17) + t + 96
        u = u + 32
        continue 
    emit 0xfe6e502a: mem[mem[64] len t - mem[64]]
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor10.field_0) = arg1
    stor11 = arg2
    stor12 = arg3
    stor13 = 50
    stor14 = 50
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg1 + arg2 + arg3 > -51:
        revert with 0, 17
    if arg1 + arg2 + arg3 + 50 > -51:
        revert with 0, 17
    stor15 = arg1 + arg2 + arg3 + 100
    stor17 = arg4
    if arg1 + arg2 + arg3 + 100 > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 0, 17
    require stor17 <= (3 * arg1) + (3 * arg2) + (3 * arg3) + 300
    stor16 = 10000
    require stor15 < 5000
    mem[256] = 21
    mem[288] = 0x546f74616c20427579204665652050657263656e740000000000000000000000
    mem[192] = 256
    if stor15 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    if not stor16:
        revert with 0, 18
    mem[224] = 100 * stor15 / stor16
    mem[96] = 192
    mem[384] = 22
    mem[416] = 0x546f74616c2053656c6c204665652050657263656e7400000000000000000000
    mem[320] = 384
    if stor15 > !stor17:
        revert with 0, 17
    if stor15 + stor17 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    if not stor16:
        revert with 0, 18
    mem[352] = (100 * stor15) + (100 * stor17) / stor16
    mem[128] = 320
    mem[64] = 576
    mem[512] = 16
    mem[544] = 0x476f6c646d696e652050657263656e7400000000000000000000000000000000
    mem[448] = 512
    if arg2 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    if not stor16:
        revert with 0, 18
    mem[480] = 100 * arg2 / stor16
    mem[160] = 448
    mem[576] = 64
    mem[640] = 4
    mem[672] = 0x4665657300000000000000000000000000000000000000000000000000000000
    mem[608] = 128
    idx = 0
    s = 96
    t = 800
    u = 704
    while idx < 3:
        mem[u] = t - 704
        _17 = mem[s]
        _18 = mem[mem[s]]
        mem[t] = 64
        _19 = mem[_18]
        mem[t + 64] = mem[_18]
        v = 0
        while v < _19:
            mem[v + t + 96] = mem[v + _18 + 32]
            v = v + 32
            continue 
        if ceil32(_19) > _19:
            mem[t + _19 + 96] = 0
        mem[t + 32] = mem[_17 + 32]
        idx = idx + 1
        s = s + 32
        t = ceil32(_19) + t + 96
        u = u + 32
        continue 
    emit 0xfe6e502a: mem[mem[64] len t - mem[64]]
}

function setSwapBackSettings(bool arg1, bool arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg3 > 0
    swapEnabled = uint8(arg1)
    Mask(240, 0, stor32.field_16) = Mask(240, 0, arg2)
    Mask(232, 0, stor32.field_24) = Mask(232, 16, arg1) >> 16
    if not arg3:
        revert with 0, 18
    swapThreshold = totalSupply / arg3
    mem[256] = 7
    mem[288] = 0x456e61626c656400000000000000000000000000000000000000000000000000
    mem[192] = 256
    if arg1:
        mem[224] = 1
        mem[96] = 192
        mem[384] = 11
        mem[416] = 0x5377617020416d6f756e74000000000000000000000000000000000000000000
        mem[320] = 384
        mem[352] = swapThreshold
        mem[128] = 320
        mem[64] = 576
        mem[512] = 15
        mem[544] = 'Auto-processing' << 136
        mem[448] = 512
        if arg2:
            mem[480] = 1
            mem[160] = 448
            mem[576] = 64
            mem[640] = 13
            mem[672] = 'Swap Settings' << 152
            mem[608] = 128
            idx = 0
            s = 96
            t = 800
            u = 704
            while idx < 3:
                mem[u] = t - 704
                _42 = mem[s]
                _43 = mem[mem[s]]
                mem[t] = 64
                _50 = mem[_43]
                mem[t + 64] = mem[_43]
                v = 0
                while v < _50:
                    mem[v + t + 96] = mem[v + _43 + 32]
                    v = v + 32
                    continue 
                if ceil32(_50) > _50:
                    mem[t + _50 + 96] = 0
                mem[t + 32] = mem[_42 + 32]
                idx = idx + 1
                s = s + 32
                t = ceil32(_50) + t + 96
                u = u + 32
                continue 
        else:
            mem[480] = 0
            mem[160] = 448
            mem[576] = 64
            mem[640] = 13
            mem[672] = 'Swap Settings' << 152
            mem[608] = 128
            idx = 0
            s = 96
            t = 800
            u = 704
            while idx < 3:
                mem[u] = t - 704
                _44 = mem[s]
                _45 = mem[mem[s]]
                mem[t] = 64
                _51 = mem[_45]
                mem[t + 64] = mem[_45]
                v = 0
                while v < _51:
                    mem[v + t + 96] = mem[v + _45 + 32]
                    v = v + 32
                    continue 
                if ceil32(_51) > _51:
                    mem[t + _51 + 96] = 0
                mem[t + 32] = mem[_44 + 32]
                idx = idx + 1
                s = s + 32
                t = ceil32(_51) + t + 96
                u = u + 32
                continue 
    else:
        mem[224] = 0
        mem[96] = 192
        mem[384] = 11
        mem[416] = 0x5377617020416d6f756e74000000000000000000000000000000000000000000
        mem[320] = 384
        mem[352] = swapThreshold
        mem[128] = 320
        mem[64] = 576
        mem[512] = 15
        mem[544] = 'Auto-processing' << 136
        mem[448] = 512
        if arg2:
            mem[480] = 1
            mem[160] = 448
            mem[576] = 64
            mem[640] = 13
            mem[672] = 'Swap Settings' << 152
            mem[608] = 128
            idx = 0
            s = 96
            t = 800
            u = 704
            while idx < 3:
                mem[u] = t - 704
                _46 = mem[s]
                _47 = mem[mem[s]]
                mem[t] = 64
                _52 = mem[_47]
                mem[t + 64] = mem[_47]
                v = 0
                while v < _52:
                    mem[v + t + 96] = mem[v + _47 + 32]
                    v = v + 32
                    continue 
                if ceil32(_52) > _52:
                    mem[t + _52 + 96] = 0
                mem[t + 32] = mem[_46 + 32]
                idx = idx + 1
                s = s + 32
                t = ceil32(_52) + t + 96
                u = u + 32
                continue 
        else:
            mem[480] = 0
            mem[160] = 448
            mem[576] = 64
            mem[640] = 13
            mem[672] = 'Swap Settings' << 152
            mem[608] = 128
            idx = 0
            s = 96
            t = 800
            u = 704
            while idx < 3:
                mem[u] = t - 704
                _48 = mem[s]
                _49 = mem[mem[s]]
                mem[t] = 64
                _53 = mem[_49]
                mem[t + 64] = mem[_49]
                v = 0
                while v < _53:
                    mem[v + t + 96] = mem[v + _49 + 32]
                    v = v + 32
                    continue 
                if ceil32(_53) > _53:
                    mem[t + _53 + 96] = 0
                mem[t + 32] = mem[_48 + 32]
                idx = idx + 1
                s = s + 32
                t = ceil32(_53) + t + 96
                u = u + 32
                continue 
    emit 0xfe6e502a: mem[mem[64] len t - mem[64]]
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[32] = 8
    stor8[address(arg1)] = uint8(arg2)
    mem[0] = arg1
    if arg2:
        mem[96] = 12
        mem[128] = 0x466565732052656d6f7665640000000000000000000000000000000000000000
        mem[352] = address(arg1)
        mem[320] = 20
        mem[372] = 16
        mem[404] = 0x3031323334353637383961626364656600000000000000000000000000000000
        mem[436] = 42
        mem[468 len 42] = call.data[calldata.size len 42]
        mem[468 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        mem[469 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
        idx = 0
        while idx < 20:
            if idx >= 20:
                revert with 0, 50
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 2 > !(2 * idx):
                revert with 0, 17
            if (2 * idx) + 2 >= 42:
                revert with 0, 50
            mem[(2 * idx) + 470 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if idx >= 20:
                revert with 0, 50
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 3 > !(2 * idx):
                revert with 0, 17
            if (2 * idx) + 3 >= 42:
                revert with 0, 50
            mem[(2 * idx) + 471 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[256] = 436
        mem[288] = 1
        mem[160] = 256
        mem[596] = 0
        mem[532] = 596
        mem[564] = 0
        mem[192] = 532
        mem[64] = 724
        mem[692] = 0
        mem[628] = 692
        mem[660] = 0
        mem[224] = 628
        mem[724] = 64
        mem[788] = 12
        mem[820] = 0x466565732052656d6f7665640000000000000000000000000000000000000000
        mem[832] = 0
        mem[756] = 128
        idx = 0
        s = 160
        t = 948
        u = 852
        while idx < 3:
            mem[u] = t - 852
            _308 = mem[s]
            _309 = mem[mem[s]]
            mem[t] = 64
            _321 = mem[_309]
            mem[t + 64] = mem[_309]
            v = 0
            while v < _321:
                mem[v + t + 96] = mem[v + _309 + 32]
                v = v + 32
                continue 
            if ceil32(_321) > _321:
                mem[t + _321 + 96] = 0
            mem[t + 32] = mem[_308 + 32]
            idx = idx + 1
            s = s + 32
            t = ceil32(_321) + t + 96
            u = u + 32
            continue 
    else:
        mem[96] = 13
        mem[128] = 0x4665657320456e666f7263656400000000000000000000000000000000000000
        mem[352] = address(arg1)
        mem[320] = 20
        mem[372] = 16
        mem[404] = 0x3031323334353637383961626364656600000000000000000000000000000000
        mem[436] = 42
        mem[468 len 42] = call.data[calldata.size len 42]
        mem[468 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        mem[469 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
        idx = 0
        while idx < 20:
            if idx >= 20:
                revert with 0, 50
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 2 > !(2 * idx):
                revert with 0, 17
            if (2 * idx) + 2 >= 42:
                revert with 0, 50
            mem[(2 * idx) + 470 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if idx >= 20:
                revert with 0, 50
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 3 > !(2 * idx):
                revert with 0, 17
            if (2 * idx) + 3 >= 42:
                revert with 0, 50
            mem[(2 * idx) + 471 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[256] = 436
        mem[288] = 1
        mem[160] = 256
        mem[596] = 0
        mem[532] = 596
        mem[564] = 0
        mem[192] = 532
        mem[64] = 724
        mem[692] = 0
        mem[628] = 692
        mem[660] = 0
        mem[224] = 628
        mem[724] = 64
        mem[788] = 13
        mem[820] = 0x4665657320456e666f7263656400000000000000000000000000000000000000
        mem[833] = 0
        mem[756] = 128
        idx = 0
        s = 160
        t = 948
        u = 852
        while idx < 3:
            mem[u] = t - 852
            _316 = mem[s]
            _317 = mem[mem[s]]
            mem[t] = 64
            _325 = mem[_317]
            mem[t + 64] = mem[_317]
            v = 0
            while v < _325:
                mem[v + t + 96] = mem[v + _317 + 32]
                v = v + 32
                continue 
            if ceil32(_325) > _325:
                mem[t + _325 + 96] = 0
            mem[t + 32] = mem[_316 + 32]
            idx = idx + 1
            s = s + 32
            t = ceil32(_325) + t + 96
            u = u + 32
            continue 
    emit 0xfe6e502a: mem[mem[64] len t - mem[64]]
}

function addLiquidityPool(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if pairAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't alter current liquidity pair'
    mem[32] = 27
    stor27[address(arg1)] = uint8(arg2)
    mem[0] = arg1
    if arg2:
        mem[96] = 22
        mem[128] = 0x4c697175696469747920506f6f6c20456e61626c656400000000000000000000
        mem[352] = address(arg1)
        mem[320] = 20
        mem[372] = 16
        mem[404] = 0x3031323334353637383961626364656600000000000000000000000000000000
        mem[436] = 42
        mem[468 len 42] = call.data[calldata.size len 42]
        mem[468 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        mem[469 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
        idx = 0
        while idx < 20:
            if idx >= 20:
                revert with 0, 50
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 2 > !(2 * idx):
                revert with 0, 17
            if (2 * idx) + 2 >= 42:
                revert with 0, 50
            mem[(2 * idx) + 470 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if idx >= 20:
                revert with 0, 50
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 3 > !(2 * idx):
                revert with 0, 17
            if (2 * idx) + 3 >= 42:
                revert with 0, 50
            mem[(2 * idx) + 471 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[256] = 436
        mem[288] = 1
        mem[160] = 256
        mem[596] = 0
        mem[532] = 596
        mem[564] = 0
        mem[192] = 532
        mem[64] = 724
        mem[692] = 0
        mem[628] = 692
        mem[660] = 0
        mem[224] = 628
        mem[724] = 64
        mem[788] = 22
        mem[820] = 0x4c697175696469747920506f6f6c20456e61626c656400000000000000000000
        mem[842] = 0
        mem[756] = 128
        idx = 0
        s = 160
        t = 948
        u = 852
        while idx < 3:
            mem[u] = t - 852
            _310 = mem[s]
            _311 = mem[mem[s]]
            mem[t] = 64
            _323 = mem[_311]
            mem[t + 64] = mem[_311]
            v = 0
            while v < _323:
                mem[v + t + 96] = mem[v + _311 + 32]
                v = v + 32
                continue 
            if ceil32(_323) > _323:
                mem[t + _323 + 96] = 0
            mem[t + 32] = mem[_310 + 32]
            idx = idx + 1
            s = s + 32
            t = ceil32(_323) + t + 96
            u = u + 32
            continue 
    else:
        mem[96] = 23
        mem[128] = 'Liquidity Pool Disabled'
        mem[352] = address(arg1)
        mem[320] = 20
        mem[372] = 16
        mem[404] = 0x3031323334353637383961626364656600000000000000000000000000000000
        mem[436] = 42
        mem[468 len 42] = call.data[calldata.size len 42]
        mem[468 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        mem[469 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
        idx = 0
        while idx < 20:
            if idx >= 20:
                revert with 0, 50
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 2 > !(2 * idx):
                revert with 0, 17
            if (2 * idx) + 2 >= 42:
                revert with 0, 50
            mem[(2 * idx) + 470 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if idx >= 20:
                revert with 0, 50
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 3 > !(2 * idx):
                revert with 0, 17
            if (2 * idx) + 3 >= 42:
                revert with 0, 50
            mem[(2 * idx) + 471 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[256] = 436
        mem[288] = 1
        mem[160] = 256
        mem[596] = 0
        mem[532] = 596
        mem[564] = 0
        mem[192] = 532
        mem[64] = 724
        mem[692] = 0
        mem[628] = 692
        mem[660] = 0
        mem[224] = 628
        mem[724] = 64
        mem[788] = 23
        mem[820] = 'Liquidity Pool Disabled'
        mem[843] = 0
        mem[756] = 128
        idx = 0
        s = 160
        t = 948
        u = 852
        while idx < 3:
            mem[u] = t - 852
            _318 = mem[s]
            _319 = mem[mem[s]]
            mem[t] = 64
            _327 = mem[_319]
            mem[t + 64] = mem[_319]
            v = 0
            while v < _327:
                mem[v + t + 96] = mem[v + _319 + 32]
                v = v + 32
                continue 
            if ceil32(_327) > _327:
                mem[t + _327 + 96] = 0
            mem[t + 32] = mem[_318 + 32]
            idx = idx + 1
            s = s + 32
            t = ceil32(_327) + t + 96
            u = u + 32
            continue 
    emit 0xfe6e502a: mem[mem[64] len t - mem[64]]
}

function switchRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    routerAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.WETH() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stor1 = ext_call.return_data[12 len 20]
    require ext_code.size(routerAddress)
    staticcall routerAddress.factory() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = stor1
    mem[(2 * ceil32(return_data.size)) + 132] = this.address
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args stor1, this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    pairAddress = ext_call.return_data[12 len 20]
    mem[32] = 27
    stor27[ext_call.return_data[12 len 20]] = 1
    mem[(4 * ceil32(return_data.size)) + 256] = 12
    mem[(4 * ceil32(return_data.size)) + 288] = 0x4e657720526f757465723a200000000000000000000000000000000000000000
    mem[0] = ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 352] = address(arg1)
    mem[(4 * ceil32(return_data.size)) + 320] = 20
    mem[(4 * ceil32(return_data.size)) + 372] = 16
    mem[(4 * ceil32(return_data.size)) + 404] = 0x3031323334353637383961626364656600000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 436] = 42
    mem[(4 * ceil32(return_data.size)) + 468 len 42] = call.data[calldata.size len 42]
    mem[(4 * ceil32(return_data.size)) + 468 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
    mem[(4 * ceil32(return_data.size)) + 469 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
    idx = 0
    while idx < 20:
        if idx >= 20:
            revert with 0, 50
        if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 2 > !(2 * idx):
            revert with 0, 17
        if (2 * idx) + 2 >= 42:
            revert with 0, 50
        mem[(2 * idx) + (4 * ceil32(return_data.size)) + 470 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        if idx >= 20:
            revert with 0, 50
        if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 3 > !(2 * idx):
            revert with 0, 17
        if (2 * idx) + 3 >= 42:
            revert with 0, 50
        mem[(2 * idx) + (4 * ceil32(return_data.size)) + 471 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(4 * ceil32(return_data.size)) + 564] = 0x4e657720526f757465723a200000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 576 len 64] = 0, mem[(4 * ceil32(return_data.size)) + 469 len 63]
    mem[(4 * ceil32(return_data.size)) + 192] = (4 * ceil32(return_data.size)) + 532
    mem[(4 * ceil32(return_data.size)) + 224] = 1
    mem[(4 * ceil32(return_data.size)) + 96] = (4 * ceil32(return_data.size)) + 192
    mem[(4 * ceil32(return_data.size)) + 682] = 20
    mem[(4 * ceil32(return_data.size)) + 714] = 0x4e6577204c697175696469747920506169723a20000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 778] = Mask(160, 96, pairAddress)
    mem[(4 * ceil32(return_data.size)) + 746] = 20
    mem[(4 * ceil32(return_data.size)) + 798] = 16
    mem[(4 * ceil32(return_data.size)) + 830] = 0x3031323334353637383961626364656600000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 862] = 42
    mem[(4 * ceil32(return_data.size)) + 894 len 42] = call.data[calldata.size len 42]
    mem[(4 * ceil32(return_data.size)) + 894 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
    mem[(4 * ceil32(return_data.size)) + 895 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
    idx = 0
    while idx < 20:
        if idx >= 20:
            revert with 0, 50
        if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 2 > !(2 * idx):
            revert with 0, 17
        if (2 * idx) + 2 >= 42:
            revert with 0, 50
        mem[(2 * idx) + (4 * ceil32(return_data.size)) + 896 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        if idx >= 20:
            revert with 0, 50
        if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 3 > !(2 * idx):
            revert with 0, 17
        if (2 * idx) + 3 >= 42:
            revert with 0, 50
        mem[(2 * idx) + (4 * ceil32(return_data.size)) + 897 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(4 * ceil32(return_data.size)) + 990] = 0x4e6577204c697175696469747920506169723a20000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 1010 len 64] = 0, mem[(4 * ceil32(return_data.size)) + 895 len 63]
    mem[(4 * ceil32(return_data.size)) + 618] = (4 * ceil32(return_data.size)) + 958
    mem[(4 * ceil32(return_data.size)) + 650] = 1
    mem[(4 * ceil32(return_data.size)) + 128] = (4 * ceil32(return_data.size)) + 618
    mem[64] = (4 * ceil32(return_data.size)) + 1148
    mem[(4 * ceil32(return_data.size)) + 1116] = 0
    mem[(4 * ceil32(return_data.size)) + 1052] = (4 * ceil32(return_data.size)) + 1116
    mem[(4 * ceil32(return_data.size)) + 1084] = 0
    mem[(4 * ceil32(return_data.size)) + 160] = (4 * ceil32(return_data.size)) + 1052
    mem[(4 * ceil32(return_data.size)) + 1148] = 64
    mem[(4 * ceil32(return_data.size)) + 1212] = 23
    mem[(4 * ceil32(return_data.size)) + 1244] = 'Exchange Router Updated'
    mem[(4 * ceil32(return_data.size)) + 1180] = 128
    idx = 0
    s = (4 * ceil32(return_data.size)) + 96
    t = (4 * ceil32(return_data.size)) + 1372
    u = (4 * ceil32(return_data.size)) + 1276
    while idx < 3:
        mem[u] = t + -(4 * ceil32(return_data.size)) - 1276
        _6176 = mem[s]
        _6177 = mem[mem[s]]
        mem[t] = 64
        _6241 = mem[_6177]
        mem[t + 64] = mem[_6177]
        v = 0
        while v < _6241:
            mem[v + t + 96] = mem[v + _6177 + 32]
            v = v + 32
            continue 
        if ceil32(_6241) > _6241:
            mem[t + _6241 + 96] = 0
        mem[t + 32] = mem[_6176 + 32]
        idx = idx + 1
        s = s + 32
        t = ceil32(_6241) + t + 96
        u = u + 32
        continue 
    emit 0xfe6e502a: mem[mem[64] len t - mem[64]]
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'Insufficient balance'
    if not launchedAt:
        if stor27[address(arg1)]:
            if not stor9[address(msg.sender)]:
                revert with 0, 'Liquidity not added yet.'
            launchedAt = block.number
            launchedTime = block.timestamp
            swapEnabled = 1
    if not uint8(stor32.field_0):
        if not stor9[address(msg.sender)]:
            if not stor9[address(arg1)]:
                revert with 0, 'Trading not open yet.'
    if stor34:
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 17
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[arg1] > !arg2:
            revert with 0, 17
        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if not stor27[address(arg1)]:
            if stor2 != arg1:
                stor7[address(arg1)] = block.timestamp
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 17
        balanceOf[address(msg.sender)] -= arg2
        if stor8[address(msg.sender)]:
            if not stor27[msg.sender]:
                if not stor34:
                    if swapEnabled:
                        if stor27[address(arg1)]:
                            if balanceOf[this.address] >= swapThreshold:
                                if arg2:
                                    stor34 = 1
                                    if balanceOf[stor2] > !balanceOf[stor3]:
                                        revert with 0, 17
                                    if totalSupply < balanceOf[stor2] + balanceOf[stor3]:
                                        revert with 0, 17
                                    if stor24 and balanceOf[stor28] > -1 / stor24:
                                        revert with 0, 17
                                    if not totalSupply - balanceOf[stor2] - balanceOf[stor3]:
                                        revert with 0, 18
                                    if arg2 < swapThreshold:
                                        if stor24 * balanceOf[stor28] / totalSupply - balanceOf[stor2] - balanceOf[stor3] > stor23:
                                            if arg2 and 0 > -1 / arg2:
                                                revert with 0, 17
                                            if not stor15:
                                                revert with 0, 18
                                            if arg2 < 0 / stor15 / 2:
                                                revert with 0, 17
                                            mem[128] = this.address
                                            mem[160] = stor1
                                            mem[192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[196] = arg2 - (0 / stor15 / 2)
                                            idx = 0
                                            s = 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args arg2 - (0 / stor15 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            if stor15 < 0:
                                                revert with 0, 17
                                            if not stor15:
                                                revert with 0, 18
                                            if False and stor12 > 0:
                                                revert with 0, 17
                                            if not stor15:
                                                revert with 0, 18
                                            if False and stor13 > 0:
                                                revert with 0, 17
                                            if not stor15:
                                                revert with 0, 18
                                            if False and stor14 > 0:
                                                revert with 0, 17
                                            if not stor15:
                                                revert with 0, 18
                                            if False and stor11 > 0:
                                                revert with 0, 17
                                            if not stor15:
                                                revert with 0, 18
                                            call marketingFeeReceiverAddress with:
                                               value 0 / stor15 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            call stor20 with:
                                               value 0 / stor15 wei
                                                 gas 2300 * is_zero(value) wei
                                            call stor21 with:
                                               value 0 / stor15 wei
                                                 gas 2300 * is_zero(value) wei
                                            call sub_a497ab1cAddress with:
                                               value 0 / stor15 wei
                                                 gas 2300 * is_zero(value) wei
                                            if Mask(255, 1, 0 / stor15):
                                                require ext_code.size(routerAddress)
                                                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value 0 / stor15 / 2 wei
                                                     gas gas_remaining wei
                                                    args this.address, Mask(255, 1, 0 / stor15), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                            emit FundsDistributed(Mask(255, 1, 0 / stor15), Mask(255, 1, 0 / stor15), 0 / stor15, 0 / stor15, 0 / stor15);
                                        else:
                                            if arg2 and uint256(stor10.field_0) > -1 / arg2:
                                                revert with 0, 17
                                            if not stor15:
                                                revert with 0, 18
                                            if arg2 < arg2 * uint256(stor10.field_0) / stor15 / 2:
                                                revert with 0, 17
                                            mem[128] = this.address
                                            mem[160] = stor1
                                            mem[192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[196] = arg2 - (arg2 * uint256(stor10.field_0) / stor15 / 2)
                                            idx = 0
                                            s = 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args arg2 - (arg2 * uint256(stor10.field_0) / stor15 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            if stor15 < uint255(stor10.field_1):
                                                revert with 0, 17
                                            if False and uint256(stor10.field_0) > 0:
                                                revert with 0, 17
                                            if not stor15 - uint255(stor10.field_1):
                                                revert with 0, 18
                                            if False and stor12 > 0:
                                                revert with 0, 17
                                            if not stor15 - uint255(stor10.field_1):
                                                revert with 0, 18
                                            if False and stor13 > 0:
                                                revert with 0, 17
                                            if not stor15 - uint255(stor10.field_1):
                                                revert with 0, 18
                                            if False and stor14 > 0:
                                                revert with 0, 17
                                            if not stor15 - uint255(stor10.field_1):
                                                revert with 0, 18
                                            if False and stor11 > 0:
                                                revert with 0, 17
                                            if not stor15 - uint255(stor10.field_1):
                                                revert with 0, 18
                                            call marketingFeeReceiverAddress with:
                                               value 0 / stor15 - uint255(stor10.field_1) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            call stor20 with:
                                               value 0 / stor15 - uint255(stor10.field_1) wei
                                                 gas 2300 * is_zero(value) wei
                                            call stor21 with:
                                               value 0 / stor15 - uint255(stor10.field_1) wei
                                                 gas 2300 * is_zero(value) wei
                                            call sub_a497ab1cAddress with:
                                               value 0 / stor15 - uint255(stor10.field_1) wei
                                                 gas 2300 * is_zero(value) wei
                                            if Mask(255, 1, arg2 * uint256(stor10.field_0) / stor15):
                                                require ext_code.size(routerAddress)
                                                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value 0 / stor15 - uint255(stor10.field_1) / 2 wei
                                                     gas gas_remaining wei
                                                    args this.address, Mask(255, 1, arg2 * uint256(stor10.field_0) / stor15), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                            emit FundsDistributed(Mask(255, 1, 0 / stor15 - uint255(stor10.field_1)), Mask(255, 1, arg2 * uint256(stor10.field_0) / stor15), 0 / stor15 - uint255(stor10.field_1), 0 / stor15 - uint255(stor10.field_1), 0 / stor15 - uint255(stor10.field_1));
                                    else:
                                        if stor24 * balanceOf[stor28] / totalSupply - balanceOf[stor2] - balanceOf[stor3] > stor23:
                                            if swapThreshold and 0 > -1 / swapThreshold:
                                                revert with 0, 17
                                            if not stor15:
                                                revert with 0, 18
                                            if swapThreshold < 0 / stor15 / 2:
                                                revert with 0, 17
                                            mem[128] = this.address
                                            mem[160] = stor1
                                            mem[192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[196] = swapThreshold - (0 / stor15 / 2)
                                            idx = 0
                                            s = 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args swapThreshold - (0 / stor15 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            if stor15 < 0:
                                                revert with 0, 17
                                            if not stor15:
                                                revert with 0, 18
                                            if False and stor12 > 0:
                                                revert with 0, 17
                                            if not stor15:
                                                revert with 0, 18
                                            if False and stor13 > 0:
                                                revert with 0, 17
                                            if not stor15:
                                                revert with 0, 18
                                            if False and stor14 > 0:
                                                revert with 0, 17
                                            if not stor15:
                                                revert with 0, 18
                                            if False and stor11 > 0:
                                                revert with 0, 17
                                            if not stor15:
                                                revert with 0, 18
                                            call marketingFeeReceiverAddress with:
                                               value 0 / stor15 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            call stor20 with:
                                               value 0 / stor15 wei
                                                 gas 2300 * is_zero(value) wei
                                            call stor21 with:
                                               value 0 / stor15 wei
                                                 gas 2300 * is_zero(value) wei
                                            call sub_a497ab1cAddress with:
                                               value 0 / stor15 wei
                                                 gas 2300 * is_zero(value) wei
                                            if Mask(255, 1, 0 / stor15):
                                                require ext_code.size(routerAddress)
                                                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value 0 / stor15 / 2 wei
                                                     gas gas_remaining wei
                                                    args this.address, Mask(255, 1, 0 / stor15), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                            emit FundsDistributed(Mask(255, 1, 0 / stor15), Mask(255, 1, 0 / stor15), 0 / stor15, 0 / stor15, 0 / stor15);
                                        else:
                                            if swapThreshold and uint256(stor10.field_0) > -1 / swapThreshold:
                                                revert with 0, 17
                                            if not stor15:
                                                revert with 0, 18
                                            if swapThreshold < swapThreshold * uint256(stor10.field_0) / stor15 / 2:
                                                revert with 0, 17
                                            mem[128] = this.address
                                            mem[160] = stor1
                                            mem[192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[196] = swapThreshold - (swapThreshold * uint256(stor10.field_0) / stor15 / 2)
                                            idx = 0
                                            s = 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args swapThreshold - (swapThreshold * uint256(stor10.field_0) / stor15 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            if stor15 < uint255(stor10.field_1):
                                                revert with 0, 17
                                            if False and uint256(stor10.field_0) > 0:
                                                revert with 0, 17
                                            if not stor15 - uint255(stor10.field_1):
                                                revert with 0, 18
                                            if False and stor12 > 0:
                                                revert with 0, 17
                                            if not stor15 - uint255(stor10.field_1):
                                                revert with 0, 18
                                            if False and stor13 > 0:
                                                revert with 0, 17
                                            if not stor15 - uint255(stor10.field_1):
                                                revert with 0, 18
                                            if False and stor14 > 0:
                                                revert with 0, 17
                                            if not stor15 - uint255(stor10.field_1):
                                                revert with 0, 18
                                            if False and stor11 > 0:
                                                revert with 0, 17
                                            if not stor15 - uint255(stor10.field_1):
                                                revert with 0, 18
                                            call marketingFeeReceiverAddress with:
                                               value 0 / stor15 - uint255(stor10.field_1) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            call stor20 with:
                                               value 0 / stor15 - uint255(stor10.field_1) wei
                                                 gas 2300 * is_zero(value) wei
                                            call stor21 with:
                                               value 0 / stor15 - uint255(stor10.field_1) wei
                                                 gas 2300 * is_zero(value) wei
                                            call sub_a497ab1cAddress with:
                                               value 0 / stor15 - uint255(stor10.field_1) wei
                                                 gas 2300 * is_zero(value) wei
                                            if Mask(255, 1, swapThreshold * uint256(stor10.field_0) / stor15):
                                                require ext_code.size(routerAddress)
                                                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value 0 / stor15 - uint255(stor10.field_1) / 2 wei
                                                     gas gas_remaining wei
                                                    args this.address, Mask(255, 1, swapThreshold * uint256(stor10.field_0) / stor15), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                            emit FundsDistributed(Mask(255, 1, 0 / stor15 - uint255(stor10.field_1)), Mask(255, 1, swapThreshold * uint256(stor10.field_0) / stor15), 0 / stor15 - uint255(stor10.field_1), 0 / stor15 - uint255(stor10.field_1), 0 / stor15 - uint255(stor10.field_1));
                                    stor34 = 0
            if balanceOf[address(arg1)] > !arg2:
                revert with 0, 17
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if launchedAt > !deadBlocks:
                revert with 0, 17
            if launchedAt + deadBlocks < block.number:
                if arg2 and stor15 > -1 / arg2:
                    revert with 0, 17
                if not stor16:
                    revert with 0, 18
                if balanceOf[this.address] > !(arg2 * stor15 / stor16):
                    revert with 0, 17
                balanceOf[this.address] += arg2 * stor15 / stor16
                emit Transfer((arg2 * stor15 / stor16), msg.sender, this.address);
                if arg2 < arg2 * stor15 / stor16:
                    revert with 0, 17
                if not stor27[msg.sender]:
                    if not stor34:
                        if swapEnabled:
                            if stor27[address(arg1)]:
                                if balanceOf[this.address] >= swapThreshold:
                                    if arg2:
                                        stor34 = 1
                                        if balanceOf[stor2] > !balanceOf[stor3]:
                                            revert with 0, 17
                                        if totalSupply < balanceOf[stor2] + balanceOf[stor3]:
                                            revert with 0, 17
                                        if stor24 and balanceOf[stor28] > -1 / stor24:
                                            revert with 0, 17
                                        if not totalSupply - balanceOf[stor2] - balanceOf[stor3]:
                                            revert with 0, 18
                                        if arg2 < swapThreshold:
                                            if stor24 * balanceOf[stor28] / totalSupply - balanceOf[stor2] - balanceOf[stor3] > stor23:
                                                if arg2 and 0 > -1 / arg2:
                                                    revert with 0, 17
                                                if not stor15:
                                                    revert with 0, 18
                                                if arg2 < 0 / stor15 / 2:
                                                    revert with 0, 17
                                                mem[128] = this.address
                                                mem[160] = stor1
                                                mem[192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[196] = arg2 - (0 / stor15 / 2)
                                                idx = 0
                                                s = 388
                                                t = 128
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args arg2 - (0 / stor15 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                if stor15 < 0:
                                                    revert with 0, 17
                                                if not stor15:
                                                    revert with 0, 18
                                                if False and stor12 > 0:
                                                    revert with 0, 17
                                                if not stor15:
                                                    revert with 0, 18
                                                if False and stor13 > 0:
                                                    revert with 0, 17
                                                if not stor15:
                                                    revert with 0, 18
                                                if False and stor14 > 0:
                                                    revert with 0, 17
                                                if not stor15:
                                                    revert with 0, 18
                                                if False and stor11 > 0:
                                                    revert with 0, 17
                                                if not stor15:
                                                    revert with 0, 18
                                                call marketingFeeReceiverAddress with:
                                                   value 0 / stor15 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                call stor20 with:
                                                   value 0 / stor15 wei
                                                     gas 2300 * is_zero(value) wei
                                                call stor21 with:
                                                   value 0 / stor15 wei
                                                     gas 2300 * is_zero(value) wei
                                                call sub_a497ab1cAddress with:
                                                   value 0 / stor15 wei
                                                     gas 2300 * is_zero(value) wei
                                                if Mask(255, 1, 0 / stor15):
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                       value 0 / stor15 / 2 wei
                                                         gas gas_remaining wei
                                                        args this.address, Mask(255, 1, 0 / stor15), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                emit FundsDistributed(Mask(255, 1, 0 / stor15), Mask(255, 1, 0 / stor15), 0 / stor15, 0 / stor15, 0 / stor15);
                                            else:
                                                if arg2 and uint256(stor10.field_0) > -1 / arg2:
                                                    revert with 0, 17
                                                if not stor15:
                                                    revert with 0, 18
                                                if arg2 < arg2 * uint256(stor10.field_0) / stor15 / 2:
                                                    revert with 0, 17
                                                mem[128] = this.address
                                                mem[160] = stor1
                                                mem[192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[196] = arg2 - (arg2 * uint256(stor10.field_0) / stor15 / 2)
                                                idx = 0
                                                s = 388
                                                t = 128
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args arg2 - (arg2 * uint256(stor10.field_0) / stor15 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                if stor15 < uint255(stor10.field_1):
                                                    revert with 0, 17
                                                if False and uint256(stor10.field_0) > 0:
                                                    revert with 0, 17
                                                if not stor15 - uint255(stor10.field_1):
                                                    revert with 0, 18
                                                if False and stor12 > 0:
                                                    revert with 0, 17
                                                if not stor15 - uint255(stor10.field_1):
                                                    revert with 0, 18
                                                if False and stor13 > 0:
                                                    revert with 0, 17
                                                if not stor15 - uint255(stor10.field_1):
                                                    revert with 0, 18
                                                if False and stor14 > 0:
                                                    revert with 0, 17
                                                if not stor15 - uint255(stor10.field_1):
                                                    revert with 0, 18
                                                if False and stor11 > 0:
                                                    revert with 0, 17
                                                if not stor15 - uint255(stor10.field_1):
                                                    revert with 0, 18
                                                call marketingFeeReceiverAddress with:
                                                   value 0 / stor15 - uint255(stor10.field_1) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                call stor20 with:
                                                   value 0 / stor15 - uint255(stor10.field_1) wei
                                                     gas 2300 * is_zero(value) wei
                                                call stor21 with:
                                                   value 0 / stor15 - uint255(stor10.field_1) wei
                                                     gas 2300 * is_zero(value) wei
                                                call sub_a497ab1cAddress with:
                                                   value 0 / stor15 - uint255(stor10.field_1) wei
                                                     gas 2300 * is_zero(value) wei
                                                if Mask(255, 1, arg2 * uint256(stor10.field_0) / stor15):
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                       value 0 / stor15 - uint255(stor10.field_1) / 2 wei
                                                         gas gas_remaining wei
                                                        args this.address, Mask(255, 1, arg2 * uint256(stor10.field_0) / stor15), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                emit FundsDistributed(Mask(255, 1, 0 / stor15 - uint255(stor10.field_1)), Mask(255, 1, arg2 * uint256(stor10.field_0) / stor15), 0 / stor15 - uint255(stor10.field_1), 0 / stor15 - uint255(stor10.field_1), 0 / stor15 - uint255(stor10.field_1));
                                        else:
                                            if stor24 * balanceOf[stor28] / totalSupply - balanceOf[stor2] - balanceOf[stor3] > stor23:
                                                if swapThreshold and 0 > -1 / swapThreshold:
                                                    revert with 0, 17
                                                if not stor15:
                                                    revert with 0, 18
                                                if swapThreshold < 0 / stor15 / 2:
                                                    revert with 0, 17
                                                mem[128] = this.address
                                                mem[160] = stor1
                                                mem[192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[196] = swapThreshold - (0 / stor15 / 2)
                                                idx = 0
                                                s = 388
                                                t = 128
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args swapThreshold - (0 / stor15 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                if stor15 < 0:
                                                    revert with 0, 17
                                                if not stor15:
                                                    revert with 0, 18
                                                if False and stor12 > 0:
                                                    revert with 0, 17
                                                if not stor15:
                                                    revert with 0, 18
                                                if False and stor13 > 0:
                                                    revert with 0, 17
                                                if not stor15:
                                                    revert with 0, 18
                                                if False and stor14 > 0:
                                                    revert with 0, 17
                                                if not stor15:
                                                    revert with 0, 18
                                                if False and stor11 > 0:
                                                    revert with 0, 17
                                                if not stor15:
                                                    revert with 0, 18
                                                call marketingFeeReceiverAddress with:
                                                   value 0 / stor15 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                call stor20 with:
                                                   value 0 / stor15 wei
                                                     gas 2300 * is_zero(value) wei
                                                call stor21 with:
                                                   value 0 / stor15 wei
                                                     gas 2300 * is_zero(value) wei
                                                call sub_a497ab1cAddress with:
                                                   value 0 / stor15 wei
                                                     gas 2300 * is_zero(value) wei
                                                if Mask(255, 1, 0 / stor15):
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                       value 0 / stor15 / 2 wei
                                                         gas gas_remaining wei
                                                        args this.address, Mask(255, 1, 0 / stor15), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                emit FundsDistributed(Mask(255, 1, 0 / stor15), Mask(255, 1, 0 / stor15), 0 / stor15, 0 / stor15, 0 / stor15);
                                            else:
                                                if swapThreshold and uint256(stor10.field_0) > -1 / swapThreshold:
                                                    revert with 0, 17
                                                if not stor15:
                                                    revert with 0, 18
                                                if swapThreshold < swapThreshold * uint256(stor10.field_0) / stor15 / 2:
                                                    revert with 0, 17
                                                mem[128] = this.address
                                                mem[160] = stor1
                                                mem[192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[196] = swapThreshold - (swapThreshold * uint256(stor10.field_0) / stor15 / 2)
                                                idx = 0
                                                s = 388
                                                t = 128
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args swapThreshold - (swapThreshold * uint256(stor10.field_0) / stor15 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                if stor15 < uint255(stor10.field_1):
                                                    revert with 0, 17
                                                if False and uint256(stor10.field_0) > 0:
                                                    revert with 0, 17
                                                if not stor15 - uint255(stor10.field_1):
                                                    revert with 0, 18
                                                if False and stor12 > 0:
                                                    revert with 0, 17
                                                if not stor15 - uint255(stor10.field_1):
                                                    revert with 0, 18
                                                if False and stor13 > 0:
                                                    revert with 0, 17
                                                if not stor15 - uint255(stor10.field_1):
                                                    revert with 0, 18
                                                if False and stor14 > 0:
                                                    revert with 0, 17
                                                if not stor15 - uint255(stor10.field_1):
                                                    revert with 0, 18
                                                if False and stor11 > 0:
                                                    revert with 0, 17
                                                if not stor15 - uint255(stor10.field_1):
                                                    revert with 0, 18
                                                call marketingFeeReceiverAddress with:
                                                   value 0 / stor15 - uint255(stor10.field_1) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                call stor20 with:
                                                   value 0 / stor15 - uint255(stor10.field_1) wei
                                                     gas 2300 * is_zero(value) wei
                                                call stor21 with:
                                                   value 0 / stor15 - uint255(stor10.field_1) wei
                                                     gas 2300 * is_zero(value) wei
                                                call sub_a497ab1cAddress with:
                                                   value 0 / stor15 - uint255(stor10.field_1) wei
                                                     gas 2300 * is_zero(value) wei
                                                if Mask(255, 1, swapThreshold * uint256(stor10.field_0) / stor15):
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                       value 0 / stor15 - uint255(stor10.field_1) / 2 wei
                                                         gas gas_remaining wei
                                                        args this.address, Mask(255, 1, swapThreshold * uint256(stor10.field_0) / stor15), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                emit FundsDistributed(Mask(255, 1, 0 / stor15 - uint255(stor10.field_1)), Mask(255, 1, swapThreshold * uint256(stor10.field_0) / stor15), 0 / stor15 - uint255(stor10.field_1), 0 / stor15 - uint255(stor10.field_1), 0 / stor15 - uint255(stor10.field_1));
                                        stor34 = 0
                if balanceOf[address(arg1)] > !(arg2 - (arg2 * stor15 / stor16)):
                    revert with 0, 17
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor15 / stor16)
                emit Transfer((arg2 - (arg2 * stor15 / stor16)), msg.sender, arg1);
            else:
                if stor16 < 1:
                    revert with 0, 17
                if arg2 and stor16 - 1 > -1 / arg2:
                    revert with 0, 17
                if not stor16:
                    revert with 0, 18
                if balanceOf[this.address] > !(-arg2 + (stor16 * arg2) / stor16):
                    revert with 0, 17
                balanceOf[this.address] += -arg2 + (stor16 * arg2) / stor16
                emit Transfer((-arg2 + (stor16 * arg2) / stor16), msg.sender, this.address);
                if arg2 < -arg2 + (stor16 * arg2) / stor16:
                    revert with 0, 17
                if not stor27[msg.sender]:
                    if not stor34:
                        if swapEnabled:
                            if stor27[address(arg1)]:
                                if balanceOf[this.address] >= swapThreshold:
                                    if arg2:
                                        stor34 = 1
                                        if balanceOf[stor2] > !balanceOf[stor3]:
                                            revert with 0, 17
                                        if totalSupply < balanceOf[stor2] + balanceOf[stor3]:
                                            revert with 0, 17
                                        if stor24 and balanceOf[stor28] > -1 / stor24:
                                            revert with 0, 17
                                        if not totalSupply - balanceOf[stor2] - balanceOf[stor3]:
                                            revert with 0, 18
                                        if arg2 < swapThreshold:
                                            if stor24 * balanceOf[stor28] / totalSupply - balanceOf[stor2] - balanceOf[stor3] > stor23:
                                                if arg2 and 0 > -1 / arg2:
                                                    revert with 0, 17
                                                if not stor15:
                                                    revert with 0, 18
                                                if arg2 < 0 / stor15 / 2:
                                                    revert with 0, 17
                                                mem[128] = this.address
                                                mem[160] = stor1
                                                mem[192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[196] = arg2 - (0 / stor15 / 2)
                                                idx = 0
                                                s = 388
                                                t = 128
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args arg2 - (0 / stor15 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                if stor15 < 0:
                                                    revert with 0, 17
                                                if not stor15:
                                                    revert with 0, 18
                                                if False and stor12 > 0:
                                                    revert with 0, 17
                                                if not stor15:
                                                    revert with 0, 18
                                                if False and stor13 > 0:
                                                    revert with 0, 17
                                                if not stor15:
                                                    revert with 0, 18
                                                if False and stor14 > 0:
                                                    revert with 0, 17
                                                if not stor15:
                                                    revert with 0, 18
                                                if False and stor11 > 0:
                                                    revert with 0, 17
                                                if not stor15:
                                                    revert with 0, 18
                                                call marketingFeeReceiverAddress with:
                                                   value 0 / stor15 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                call stor20 with:
                                                   value 0 / stor15 wei
                                                     gas 2300 * is_zero(value) wei
                                                call stor21 with:
                                                   value 0 / stor15 wei
                                                     gas 2300 * is_zero(value) wei
                                                call sub_a497ab1cAddress with:
                                                   value 0 / stor15 wei
                                                     gas 2300 * is_zero(value) wei
                                                if Mask(255, 1, 0 / stor15):
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                       value 0 / stor15 / 2 wei
                                                         gas gas_remaining wei
                                                        args this.address, Mask(255, 1, 0 / stor15), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                emit FundsDistributed(Mask(255, 1, 0 / stor15), Mask(255, 1, 0 / stor15), 0 / stor15, 0 / stor15, 0 / stor15);
                                            else:
                                                if arg2 and uint256(stor10.field_0) > -1 / arg2:
                                                    revert with 0, 17
                                                if not stor15:
                                                    revert with 0, 18
                                                if arg2 < arg2 * uint256(stor10.field_0) / stor15 / 2:
                                                    revert with 0, 17
                                                mem[128] = this.address
                                                mem[160] = stor1
                                                mem[192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[196] = arg2 - (arg2 * uint256(stor10.field_0) / stor15 / 2)
                                                idx = 0
                                                s = 388
                                                t = 128
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args arg2 - (arg2 * uint256(stor10.field_0) / stor15 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                if stor15 < uint255(stor10.field_1):
                                                    revert with 0, 17
                                                if False and uint256(stor10.field_0) > 0:
                                                    revert with 0, 17
                                                if not stor15 - uint255(stor10.field_1):
                                                    revert with 0, 18
                                                if False and stor12 > 0:
                                                    revert with 0, 17
                                                if not stor15 - uint255(stor10.field_1):
                                                    revert with 0, 18
                                                if False and stor13 > 0:
                                                    revert with 0, 17
                                                if not stor15 - uint255(stor10.field_1):
                                                    revert with 0, 18
                                                if False and stor14 > 0:
                                                    revert with 0, 17
                                                if not stor15 - uint255(stor10.field_1):
                                                    revert with 0, 18
                                                if False and stor11 > 0:
                                                    revert with 0, 17
                                                if not stor15 - uint255(stor10.field_1):
                                                    revert with 0, 18
                                                call marketingFeeReceiverAddress with:
                                                   value 0 / stor15 - uint255(stor10.field_1) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                call stor20 with:
                                                   value 0 / stor15 - uint255(stor10.field_1) wei
                                                     gas 2300 * is_zero(value) wei
                                                call stor21 with:
                                                   value 0 / stor15 - uint255(stor10.field_1) wei
                                                     gas 2300 * is_zero(value) wei
                                                call sub_a497ab1cAddress with:
                                                   value 0 / stor15 - uint255(stor10.field_1) wei
                                                     gas 2300 * is_zero(value) wei
                                                if Mask(255, 1, arg2 * uint256(stor10.field_0) / stor15):
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                       value 0 / stor15 - uint255(stor10.field_1) / 2 wei
                                                         gas gas_remaining wei
                                                        args this.address, Mask(255, 1, arg2 * uint256(stor10.field_0) / stor15), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                emit FundsDistributed(Mask(255, 1, 0 / stor15 - uint255(stor10.field_1)), Mask(255, 1, arg2 * uint256(stor10.field_0) / stor15), 0 / stor15 - uint255(stor10.field_1), 0 / stor15 - uint255(stor10.field_1), 0 / stor15 - uint255(stor10.field_1));
                                        else:
                                            if stor24 * balanceOf[stor28] / totalSupply - balanceOf[stor2] - balanceOf[stor3] > stor23:
                                                if swapThreshold and 0 > -1 / swapThreshold:
                                                    revert with 0, 17
                                                if not stor15:
                                                    revert with 0, 18
                                                if swapThreshold < 0 / stor15 / 2:
                                                    revert with 0, 17
                                                mem[128] = this.address
                                                mem[160] = stor1
                                                mem[192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[196] = swapThreshold - (0 / stor15 / 2)
                                                idx = 0
                                                s = 388
                                                t = 128
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args swapThreshold - (0 / stor15 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                if stor15 < 0:
                                                    revert with 0, 17
                                                if not stor15:
                                                    revert with 0, 18
                                                if False and stor12 > 0:
                                                    revert with 0, 17
                                                if not stor15:
                                                    revert with 0, 18
                                                if False and stor13 > 0:
                                                    revert with 0, 17
                                                if not stor15:
                                                    revert with 0, 18
                                                if False and stor14 > 0:
                                                    revert with 0, 17
                                                if not stor15:
                                                    revert with 0, 18
                                                if False and stor11 > 0:
                                                    revert with 0, 17
                                                if not stor15:
                                                    revert with 0, 18
                                                call marketingFeeReceiverAddress with:
                                                   value 0 / stor15 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                call stor20 with:
                                                   value 0 / stor15 wei
                                                     gas 2300 * is_zero(value) wei
                                                call stor21 with:
                                                   value 0 / stor15 wei
                                                     gas 2300 * is_zero(value) wei
                                                call sub_a497ab1cAddress with:
                                                   value 0 / stor15 wei
                                                     gas 2300 * is_zero(value) wei
                                                if Mask(255, 1, 0 / stor15):
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                       value 0 / stor15 / 2 wei
                                                         gas gas_remaining wei
                                                        args this.address, Mask(255, 1, 0 / stor15), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                emit FundsDistributed(Mask(255, 1, 0 / stor15), Mask(255, 1, 0 / stor15), 0 / stor15, 0 / stor15, 0 / stor15);
                                            else:
                                                if swapThreshold and uint256(stor10.field_0) > -1 / swapThreshold:
                                                    revert with 0, 17
                                                if not stor15:
                                                    revert with 0, 18
                                                if swapThreshold < swapThreshold * uint256(stor10.field_0) / stor15 / 2:
                                                    revert with 0, 17
                                                mem[128] = this.address
                                                mem[160] = stor1
                                                mem[192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[196] = swapThreshold - (swapThreshold * uint256(stor10.field_0) / stor15 / 2)
                                                idx = 0
                                                s = 388
                                                t = 128
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args swapThreshold - (swapThreshold * uint256(stor10.field_0) / stor15 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                if stor15 < uint255(stor10.field_1):
                                                    revert with 0, 17
                                                if False and uint256(stor10.field_0) > 0:
                                                    revert with 0, 17
                                                if not stor15 - uint255(stor10.field_1):
                                                    revert with 0, 18
                                                if False and stor12 > 0:
                                                    revert with 0, 17
                                                if not stor15 - uint255(stor10.field_1):
                                                    revert with 0, 18
                                                if False and stor13 > 0:
                                                    revert with 0, 17
                                                if not stor15 - uint255(stor10.field_1):
                                                    revert with 0, 18
                                                if False and stor14 > 0:
                                                    revert with 0, 17
                                                if not stor15 - uint255(stor10.field_1):
                                                    revert with 0, 18
                                                if False and stor11 > 0:
                                                    revert with 0, 17
                                                if not stor15 - uint255(stor10.field_1):
                                                    revert with 0, 18
                                                call marketingFeeReceiverAddress with:
                                                   value 0 / stor15 - uint255(stor10.field_1) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                call stor20 with:
                                                   value 0 / stor15 - uint255(stor10.field_1) wei
                                                     gas 2300 * is_zero(value) wei
                                                call stor21 with:
                                                   value 0 / stor15 - uint255(stor10.field_1) wei
                                                     gas 2300 * is_zero(value) wei
                                                call sub_a497ab1cAddress with:
                                                   value 0 / stor15 - uint255(stor10.field_1) wei
                                                     gas 2300 * is_zero(value) wei
                                                if Mask(255, 1, swapThreshold * uint256(stor10.field_0) / stor15):
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                       value 0 / stor15 - uint255(stor10.field_1) / 2 wei
                                                         gas gas_remaining wei
                                                        args this.address, Mask(255, 1, swapThreshold * uint256(stor10.field_0) / stor15), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                emit FundsDistributed(Mask(255, 1, 0 / stor15 - uint255(stor10.field_1)), Mask(255, 1, swapThreshold * uint256(stor10.field_0) / stor15), 0 / stor15 - uint255(stor10.field_1), 0 / stor15 - uint255(stor10.field_1), 0 / stor15 - uint255(stor10.field_1));
                                        stor34 = 0
                if balanceOf[address(arg1)] > !(arg2 - (-arg2 + (stor16 * arg2) / stor16)):
                    revert with 0, 17
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (-arg2 + (stor16 * arg2) / stor16)
                emit Transfer((arg2 - (-arg2 + (stor16 * arg2) / stor16)), msg.sender, arg1);
    return 1
}



}
