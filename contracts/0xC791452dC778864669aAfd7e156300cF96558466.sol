contract main {




// =====================  Runtime code  =====================


#
#  - excludePresaleAddresses(address arg1, address arg2)
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - setFeeReceivers(address arg1, address arg2, address arg3)
#  - _fallback()
#
const name = 'Video Tokem', 0

const decimals = 9

const symbol = '', 0


address owner;
address stor1;
address stor2;
uint256 totalSupply;
uint256 stor4;
uint256 stor5;
uint256 stor6;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 lastSell;
mapping of uint256 lastBuy;
mapping of uint8 stor11;
mapping of uint8 stor12;
mapping of uint8 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
address liquidityFeeReceiverAddress;
address marketingFeeReceiverAddress;
address developerAddress;
address routerAddress;
mapping of uint8 stor26;
mapping of uint256 sub_a7e78b04;
uint8 stor28;
uint8 stor28; offset 8
uint256 stor29;
uint256 sub_38af27b9;
uint256 stor31;
address pairAddress;
uint256 launchedAt;
uint256 launchedTime;
uint256 deadBlocks;
uint8 stor36;
uint8 stor36; offset 8
uint16 stor36;
uint256 rateLimit;
uint8 swapEnabled; offset 8
uint256 stor38; offset 24
uint256 stor38; offset 16
uint256 swapThreshold;
uint256 swapMinimum;
mapping of uint8 stor42;

function swapThreshold() {
    return swapThreshold
}

function totalSupply() {
    return totalSupply
}

function sub_38af27b9(?) {
    return sub_38af27b9
}

function launchedTime() {
    return launchedTime
}

function rateLimit() {
    return rateLimit
}

function swapEnabled() {
    return bool(swapEnabled)
}

function lastSell(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastSell[arg1]
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

function sub_a7e78b04(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_a7e78b04[arg1]
}

function pair() {
    return pairAddress
}

function launchedAt() {
    return launchedAt
}

function liquidityFeeReceiver() {
    return liquidityFeeReceiverAddress
}

function lastBuy(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastBuy[arg1]
}

function developer() {
    return developerAddress
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

function swapMinimum() {
    return swapMinimum
}

function router() {
    return routerAddress
}

function deadBlocks() {
    return deadBlocks
}

function maxBuyTxTokens() {
    return (stor4 / 10^9)
}

function maxSellTxTokens() {
    return (stor5 / 10^9)
}

function maxWalletTokens() {
    return (stor6 / 10^9)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function disablePause() {
    if not stor42[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'Caller is not a team member'
    uint16(stor36.field_0) = 257
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function sub_0e5bc376(?) {
    if not stor42[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'Caller is not a team member'
    uint8(stor28.field_0) = 0
    uint8(stor28.field_8) = 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function pauseTrading() {
    if not stor42[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'Caller is not a team member'
    require not uint8(stor36.field_8)
    uint8(stor36.field_0) = 0
}

function getCirculatingSupply() {
    if balanceOf[stor1] > !balanceOf[stor2]:
        revert with 0, 17
    if totalSupply < balanceOf[stor1] + balanceOf[stor2]:
        revert with 0, 17
    return (totalSupply - balanceOf[stor1] - balanceOf[stor2])
}

function setTeamMember(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor42[address(arg1)] = uint8(arg2)
}

function sub_8a1e4c4d(?) {
    require calldata.size - 4 >= 64
    require arg1 == bool(arg1)
    if not stor42[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'Caller is not a team member'
    require not uint8(stor28.field_8)
    uint8(stor28.field_0) = uint8(bool(arg1))
    require arg2 < 24 * 3600
    if stor31 > !arg2:
        revert with 0, 17
    stor31 += arg2
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

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if launchedAt > !deadBlocks:
        revert with 0, 17
    if launchedAt + deadBlocks >= block.number:
        if stor20 < 1:
            revert with 0, 17
        return (stor20 - 1)
    if not arg1:
        if stor18 < stor19:
            revert with 0, 17
        return (stor18 - stor19)
    if stor18 > !stor19:
        revert with 0, 17
    return (stor18 + stor19)
}

function openTrading(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor42[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'Caller is not a team member'
    require not uint8(stor36.field_0)
    require arg1 < 10
    deadBlocks = arg1
    uint8(stor36.field_0) = 1
    launchedAt = block.number
    if block.timestamp > !arg2:
        revert with 0, 17
    stor31 = block.timestamp + arg2
    if arg3 and 10^9 > -1 / arg3:
        revert with 0, 17
    stor29 = 10^9 * arg3
}

function clearStuckBalance(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not stor42[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'Caller is not a team member'
    if eth.balance(this.address) and arg1 > -1 / eth.balance(this.address):
        revert with 0, 17
    call arg2 with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function rescueToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor42[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'Caller is not a team member'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function setRateLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= 30
    rateLimit = arg1
    mem[256] = 6
    mem[288] = 0x426c6f636b730000000000000000000000000000000000000000000000000000
    mem[192] = 256
    mem[224] = arg1
    mem[96] = 192
    mem[384] = 0
    mem[320] = 384
    mem[352] = 0
    mem[128] = 320
    mem[64] = 512
    mem[480] = 0
    mem[416] = 480
    mem[448] = 0
    mem[160] = 416
    mem[512] = 64
    mem[576] = 19
    mem[608] = 0x50757263686173652052617465204c696d697400000000000000000000000000
    mem[544] = 128
    idx = 0
    s = 96
    t = 736
    u = 640
    while idx < 3:
        mem[u] = t - 640
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
            mem[_17 + t + 96] = 0
        mem[t + 32] = mem[_15 + 32]
        idx = idx + 1
        s = s + 32
        t = ceil32(_17) + t + 96
        u = u + 32
        continue 
    emit 0xfe6e502a: mem[mem[64] len t - mem[64]]
}

function setMaxWallet(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 > 0
    require arg2 > 0
    require arg2 <= 10000
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    stor6 = totalSupply * arg1 / arg2
    mem[256] = 6
    mem[288] = 0x546f6b656e730000000000000000000000000000000000000000000000000000
    mem[192] = 256
    mem[224] = stor6 / 10^9
    mem[96] = 192
    mem[384] = 0
    mem[320] = 384
    mem[352] = 0
    mem[128] = 320
    mem[64] = 512
    mem[480] = 0
    mem[416] = 480
    mem[448] = 0
    mem[160] = 416
    mem[512] = 64
    mem[576] = 19
    mem[608] = 'Maximum Wallet Size' << 104
    mem[544] = 128
    idx = 0
    s = 96
    t = 736
    u = 640
    while idx < 3:
        mem[u] = t - 640
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
            mem[_17 + t + 96] = 0
        mem[t + 32] = mem[_15 + 32]
        idx = idx + 1
        s = s + 32
        t = ceil32(_17) + t + 96
        u = u + 32
        continue 
    emit 0xfe6e502a: mem[mem[64] len t - mem[64]]
}

function buyBack(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor42[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'Caller is not a team member'
    if eth.balance(this.address) and arg2 > -1 / eth.balance(this.address):
        revert with 0, 17
    require ext_code.size(routerAddress)
    staticcall routerAddress.WETH() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = arg1
    mem[ceil32(return_data.size) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = 0
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value eth.balance(this.address) * arg2 / 100 wei
         gas gas_remaining wei
        args 0, 128, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setTxLimit(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 > 0
    require arg2 > 0
    require arg3 > 0
    require arg3 <= 10000
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 0, 17
    if not arg3:
        revert with 0, 18
    stor4 = totalSupply * arg1 / arg3
    if totalSupply and arg2 > -1 / totalSupply:
        revert with 0, 17
    if not arg3:
        revert with 0, 18
    stor5 = totalSupply * arg2 / arg3
    mem[256] = 14
    mem[288] = 'Max Buy Tokens' << 144
    mem[192] = 256
    mem[224] = stor4 / 10^9
    mem[96] = 192
    mem[384] = 15
    mem[416] = 'Max Sell Tokens' << 136
    mem[320] = 384
    mem[352] = stor5 / 10^9
    mem[128] = 320
    mem[64] = 544
    mem[512] = 0
    mem[448] = 512
    mem[480] = 0
    mem[160] = 448
    mem[544] = 64
    mem[608] = 24
    mem[640] = 'Maximum Transaction Size'
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
            mem[_17 + t + 96] = 0
        mem[t + 32] = mem[_15 + 32]
        idx = idx + 1
        s = s + 32
        t = ceil32(_17) + t + 96
        u = u + 32
        continue 
    emit 0xfe6e502a: mem[mem[64] len t - mem[64]]
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12[address(arg1)] = uint8(arg2)
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
    mem[724] = 64
    if arg2:
        mem[788] = 25
        mem[820] = 'Transaction Limit Removed'
        mem[845] = 0
        mem[756] = 128
        emit 0xfe6e502a: mem[724 len var52003 - 724]
    else:
        mem[788] = 26
        mem[820] = 'Transaction Limit Enforced'
        mem[846] = 0
        mem[756] = 128
        emit 0xfe6e502a: mem[724 len var53003 - 724]
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11[address(arg1)] = uint8(arg2)
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
    mem[724] = 64
    if arg2:
        mem[788] = 12
        mem[820] = 0x466565732052656d6f7665640000000000000000000000000000000000000000
        mem[832] = 0
        mem[756] = 128
        emit 0xfe6e502a: mem[724 len var52003 - 724]
    else:
        mem[788] = 13
        mem[820] = 0x4665657320456e666f7263656400000000000000000000000000000000000000
        mem[833] = 0
        mem[756] = 128
        emit 0xfe6e502a: mem[724 len var53003 - 724]
}

function addLiquidityPool(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if pairAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't alter current liquidity pair'
    stor26[address(arg1)] = uint8(arg2)
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
    mem[724] = 64
    if arg2:
        mem[788] = 22
        mem[820] = 0x4c697175696469747920506f6f6c20456e61626c656400000000000000000000
        mem[842] = 0
    else:
        mem[788] = 23
        mem[820] = 'Liquidity Pool Disabled'
        mem[843] = 0
    mem[756] = 128
    emit 0xfe6e502a: mem[724 len var54003 - 724]
}

function sub_80d75b5e(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    if not stor42[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'Caller is not a team member'
    if cd[36]:
        require uint8(stor28.field_0)
    idx = 0
    while idx < ('cd', 4).length:
        if not cd[36]:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if sub_a7e78b04[address(cd[((32 * idx) + cd[4] + 36)])]:
                if not sub_38af27b9:
                    revert with 0, 17
                sub_38af27b9--
        else:
            if sub_38af27b9 == -1:
                revert with 0, 17
            sub_38af27b9++
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64]] = tx.origin
            mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 64] = block.number
            mem[mem[64] + 96] = 2
            emit 0x4e6fd824: tx.origin, address(cd[((32 * idx) + cd[4] + 36)]), block.number, 2
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 27
        if cd[36]:
            sub_a7e78b04[address(cd[((32 * idx) + cd[4] + 36)])] = block.number
        else:
            sub_a7e78b04[address(cd[((32 * idx) + cd[4] + 36)])] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor17 = arg1
    stor16 = arg2
    stor15 = arg3
    stor14 = arg4
    if arg1 > !arg3:
        revert with 0, 17
    if arg1 + arg3 > !arg2:
        revert with 0, 17
    if arg1 + arg3 + arg2 > !arg4:
        revert with 0, 17
    stor18 = arg1 + arg3 + arg2 + arg4
    stor19 = arg5
    stor20 = arg6
    require stor18 < arg6 / 2
    mem[256] = 17
    mem[288] = 0x546f74616c204665652050657263656e74000000000000000000000000000000
    mem[192] = 256
    if stor18 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    if not stor20:
        revert with 0, 18
    mem[224] = 100 * stor18 / stor20
    mem[96] = 192
    mem[384] = 17
    mem[416] = 0x4d61726b6574696e672050657263656e74000000000000000000000000000000
    mem[320] = 384
    if arg3 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    if not stor20:
        revert with 0, 18
    mem[352] = 100 * arg3 / stor20
    mem[128] = 320
    mem[64] = 576
    mem[512] = 17
    mem[544] = 0x4c69717569646974792050657263656e74000000000000000000000000000000
    mem[448] = 512
    if arg2 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    if not stor20:
        revert with 0, 18
    mem[480] = 100 * arg2 / stor20
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
            mem[_19 + t + 96] = 0
        mem[t + 32] = mem[_17 + 32]
        idx = idx + 1
        s = s + 32
        t = ceil32(_19) + t + 96
        u = u + 32
        continue 
    emit 0xfe6e502a: mem[mem[64] len t - mem[64]]
}

function airdrop(address[] arg1, uint256[] arg2) {
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
        revert with 0, 'Ownable: caller is not the owner'
    require arg1.length
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 26
        if not stor26[address(cd[((32 * idx) + arg1 + 36)])]:
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 13
            if not stor13[address(cd[((32 * idx) + arg1 + 36)])]:
                if idx >= arg1.length:
                    revert with 0, 50
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                if idx >= arg2.length:
                    revert with 0, 50
                if cd[((32 * idx) + arg2 + 36)] and 10^9 > -1 / cd[((32 * idx) + arg2 + 36)]:
                    revert with 0, 17
                if balanceOf[address(msg.sender)] < 10^9 * cd[((32 * idx) + arg2 + 36)]:
                    revert with 0, 17
                balanceOf[address(msg.sender)] += -1 * 10^9 * cd[((32 * idx) + arg2 + 36)]
                if balanceOf[address(cd[((32 * idx) + arg1 + 36)])] > !(10^9 * cd[((32 * idx) + arg2 + 36)]):
                    revert with 0, 17
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 7
                balanceOf[address(cd[((32 * idx) + arg1 + 36)])] += 10^9 * cd[((32 * idx) + arg2 + 36)]
                mem[96] = 10^9 * cd[((32 * idx) + arg2 + 36)]
                emit Transfer((10^9 * cd[((32 * idx) + arg2 + 36)]), msg.sender, address(cd[((32 * idx) + arg1 + 36)]));
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function setSwapBackSettings(bool arg1, bool arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg3 > 0
    swapEnabled = uint8(arg1)
    Mask(240, 0, stor38.field_16) = Mask(240, 0, arg2)
    Mask(232, 0, stor38.field_24) = Mask(232, 16, arg1) >> 16
    if not arg3:
        revert with 0, 18
    swapThreshold = totalSupply / arg3
    if arg4 and 10^9 > -1 / arg4:
        revert with 0, 17
    swapMinimum = 10^9 * arg4
    mem[256] = 7
    mem[288] = 0x456e61626c656400000000000000000000000000000000000000000000000000
    mem[192] = 256
    if arg1:
        mem[224] = 1
        mem[96] = 192
        mem[384] = 12
        mem[416] = 'Swap Maximum' << 160
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
                    mem[_50 + t + 96] = 0
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
                    mem[_51 + t + 96] = 0
                mem[t + 32] = mem[_44 + 32]
                idx = idx + 1
                s = s + 32
                t = ceil32(_51) + t + 96
                u = u + 32
                continue 
    else:
        mem[224] = 0
        mem[96] = 192
        mem[384] = 12
        mem[416] = 'Swap Maximum' << 160
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
                    mem[_52 + t + 96] = 0
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
                    mem[_53 + t + 96] = 0
                mem[t + 32] = mem[_48 + 32]
                idx = idx + 1
                s = s + 32
                t = ceil32(_53) + t + 96
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
    staticcall arg1.factory() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(routerAddress)
    staticcall routerAddress.WETH() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 132] = this.address
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xc9c65396 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    pairAddress = ext_call.return_data[12 len 20]
    stor26[ext_call.return_data[12 len 20]] = 1
    mem[32] = 12
    stor12[address(arg1)] = 1
    mem[(4 * ceil32(return_data.size)) + 256] = 12
    mem[(4 * ceil32(return_data.size)) + 288] = 0x4e657720526f757465723a200000000000000000000000000000000000000000
    mem[0] = arg1
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
        _6177 = mem[s]
        _6178 = mem[mem[s]]
        mem[t] = 64
        _6242 = mem[_6178]
        mem[t + 64] = mem[_6178]
        v = 0
        while v < _6242:
            mem[v + t + 96] = mem[v + _6178 + 32]
            v = v + 32
            continue 
        if ceil32(_6242) > _6242:
            mem[_6242 + t + 96] = 0
        mem[t + 32] = mem[_6177 + 32]
        idx = idx + 1
        s = s + 32
        t = ceil32(_6242) + t + 96
        u = u + 32
        continue 
    emit 0xfe6e502a: mem[mem[64] len t - mem[64]]
}



}
