contract main {




// =====================  Runtime code  =====================


const sub_17667967(?) = 5 * 10^14

const priceCalculator = 0x20e5e35ba29dc3b540a1aee781d0814d5c77bce6


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
mapping of uint8 stor101;
uint8 stor102;
uint256 stor152;
address keeperAddress;
address qValidatorAddress;
address sub_7bc2c30eAddress;
array of struct markets;
mapping of struct marketInfoOf;
uint256 closeFactor;
uint256 liquidationIncentive;
array of struct sub_a2a2d5bb;
mapping of uint8 stor210;
array of address sub_58150feb;
mapping of uint256 stor212;
address sub_5cac95c1Address;
array of address stor59520738474026231794348976952902667040706605150098822476031567562278569499438;

function closeFactor() {
    return closeFactor
}

function sub_1488ca08(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(marketInfoOf[arg1].field_0), 
           marketInfoOf[arg1].field_256,
           marketInfoOf[arg1].field_512,
           marketInfoOf[arg1].field_768
}

function sub_58150feb(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_58150feb.length
    return sub_58150feb[arg1]
}

function sub_5cac95c1(?) {
    return sub_5cac95c1Address
}

function marketInfoOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(marketInfoOf[address(arg1)].field_0), 
           marketInfoOf[address(arg1)].field_256,
           marketInfoOf[address(arg1)].field_512,
           marketInfoOf[address(arg1)].field_768
}

function sub_7bc2c30e(?) {
    return sub_7bc2c30eAddress
}

function liquidationIncentive() {
    return liquidationIncentive
}

function owner() {
    return owner
}

function sub_928fe477(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return bool(stor210[arg1][arg2])
}

function checkMembership(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor210[address(arg2)][address(arg1)])
}

function qValidator() {
    return qValidatorAddress
}

function sub_a2a2d5bb(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_a2a2d5bb[arg1].field_0
    return sub_a2a2d5bb[arg1][arg2].field_0
}

function keeper() {
    return keeperAddress
}

function markets(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < markets.length
    return markets[arg1].field_0
}

function isWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor101[address(arg1)])
}

function sub_f0131fb4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor212[address(arg1)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setLiquidationIncentive(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    liquidationIncentive = arg1
    emit LiquidationIncentiveUpdated(arg1);
}

function sub_2271e381(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Qore: invalid address'
    stor212[address(arg1)] = arg2
}

function setWhitelist(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor101[address(arg1)] = uint8(arg2)
    emit Whitelisted(arg2, arg1);
}

function disableWhitelist(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor102 = uint8(arg1)
    if not arg1:
        emit EnableWhitelist()
    else:
        emit DisableWhitelist()
}

function setKeeper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Qore: invalid keeper address'
    keeperAddress = arg1
    emit KeeperUpdated(arg1);
}

function setQValidator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Qore: invalid qValidator address'
    qValidatorAddress = arg1
    emit QValidatorUpdated(arg1);
}

function borrow(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not marketInfoOf[address(arg1)].field_0:
        revert with 0, 'Qore: invalid market'
    if stor152 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor152 = 2
    revert with 0, 'cannot borrow now'
}

function redeemToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not marketInfoOf[address(arg1)].field_0:
        revert with 0, 'Qore: invalid market'
    if stor152 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor152 = 2
    revert with 0, 'cannot redeem now'
}

function liquidateBorrow(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor152 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor152 = 2
    revert with 0, 'cannot liquidate now'
}

function supply(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not marketInfoOf[address(arg1)].field_0:
        revert with 0, 'Qore: invalid market'
    if stor152 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor152 = 2
    revert with 0, 'cannot supply now'
}

function redeemUnderlying(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not marketInfoOf[address(arg1)].field_0:
        revert with 0, 'Qore: invalid market'
    if stor152 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor152 = 2
    revert with 0, 'cannot redeem now'
}

function repayBorrow(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not marketInfoOf[address(arg1)].field_0:
        revert with 0, 'Qore: invalid market'
    if stor152 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor152 = 2
    revert with 0, 'cannot repay now'
}

function setCloseFactor(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 5 * 10^16:
        revert with 0, 'Qore: invalid close factor'
    if arg1 > 25 * 10^13 * 3600:
        revert with 0, 'Qore: invalid close factor'
    closeFactor = arg1
    emit CloseFactorUpdated(arg1);
}

function sub_16b26431(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not sub_5cac95c1Address:
        revert with 0, 'Qore: qMultiplexer is not set'
    if sub_5cac95c1Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Qore: caller is not the qMultiplexer'
    revert with 0, 'cannot borrow now'
}

function repayBorrowBehalf(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not marketInfoOf[address(arg1)].field_0:
        revert with 0, 'Qore: invalid market'
    if stor152 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor152 = 2
    revert with 0, 'cannot repay now'
}

function setQDistributor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Qore: invalid qDistributor address'
    sub_7bc2c30eAddress = arg1
    emit QDistributorUpdated(arg1);
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

function sub_f42ce673(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Qore: invalid qMultiplexer address'
    sub_5cac95c1Address = address(arg1)
    emit 0x5591c41e: address(arg1)
}

function accountLiquidityOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(qValidatorAddress)
    staticcall qValidatorAddress.getAccountLiquidity(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
}

function boostedRatioOf(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(sub_7bc2c30eAddress)
    staticcall sub_7bc2c30eAddress.0x547b26a3 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function distributionSpeedOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_7bc2c30eAddress)
    staticcall sub_7bc2c30eAddress.0xfdea88b2 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require bool(ceil32(return_data.size) + 544 <= test266151307())
    return ext_call.return_data[0], ext_call.return_data[32]
}

function sub_e8f575ec(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not marketInfoOf[address(arg2)].field_0:
        revert with 0, 'Qore: invalid market'
    if not stor102:
        if not stor101[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Whitelist: caller is not on the whitelist'
    if stor152 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor152 = 2
    revert with 0, 'cannot supply/borrow now'
}

function claimQubit() {
    if stor152 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor152 = 2
    idx = 0
    s = 0
    t = 196
    while idx < markets.length:
        mem[t] = markets[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(sub_7bc2c30eAddress)
    call sub_7bc2c30eAddress.0x8aadbc73 with:
         gas gas_remaining wei
        args Array(len=markets.length, data=mem[196 len 32 * markets.length]), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor152 = 1
}

function apyDistributionOf(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(sub_7bc2c30eAddress)
    staticcall sub_7bc2c30eAddress.0x62349285 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require bool(ceil32(return_data.size) + 352 <= test266151307())
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
}

function accruedQubit(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    t = 196
    while idx < markets.length:
        mem[t] = markets[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(sub_7bc2c30eAddress)
    staticcall sub_7bc2c30eAddress.0x7a9ec802 with:
            gas gas_remaining wei
           args Array(len=markets.length, data=mem[196 len 32 * markets.length]), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function accountDistributionInfoOf(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(sub_7bc2c30eAddress)
    staticcall sub_7bc2c30eAddress.0x64d6c99d with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require bool(ceil32(return_data.size) + 416 <= test266151307())
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128]
}

function distributionInfoOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_7bc2c30eAddress)
    staticcall sub_7bc2c30eAddress.0xfdea88b2 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require bool(ceil32(return_data.size) + 544 <= test266151307())
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192]
}

function claimQubit(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor152 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor152 = 2
    mem[128] = arg1
    mem[160] = 0x8aadbc7300000000000000000000000000000000000000000000000000000000
    mem[164] = 64
    idx = 0
    s = 128
    t = 260
    while idx < 1:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_7bc2c30eAddress)
    call sub_7bc2c30eAddress.0x8aadbc73 with:
         gas gas_remaining wei
        args Array(len=1, data=mem[260]), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor152 = 1
}

function accruedQubit(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[128] = arg1
    mem[160] = 0x7a9ec80200000000000000000000000000000000000000000000000000000000
    mem[164] = 64
    idx = 0
    s = 128
    t = 260
    while idx < 1:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_7bc2c30eAddress)
    staticcall sub_7bc2c30eAddress.0x7a9ec802 with:
            gas gas_remaining wei
           args Array(len=1, data=mem[260]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_d9452b04(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if marketInfoOf[address(arg1)].field_0:
        revert with 0, 'Qore: already listed market'
    idx = 0
    while idx < markets.length:
        mem[0] = 205
        if markets[idx].field_0 == address(arg1):
            revert with 0, 'Qore: already listed market'
        idx = idx + 1
        continue 
    marketInfoOf[address(arg1)].field_0 = 1
    marketInfoOf[address(arg1)].field_256 = arg2
    marketInfoOf[address(arg1)].field_512 = arg3
    marketInfoOf[address(arg1)].field_768 = arg4
    markets.length++
    stor8397[stor205.length] = address(arg1)
    emit MarketListed(address(arg1));
}

function sub_0d31ecea(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < markets.length:
        mem[0] = 205
        require ext_code.size(markets[idx].field_0)
        staticcall markets[idx].field_0.underlying() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_16] == mem[_16 + 12 len 20]
        if mem[_16 + 12 len 20] != address(arg1):
            idx = idx + 1
            continue 
        require idx < markets.length
        return markets[idx].field_0
    return 0
}

function setCollateralFactor(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not marketInfoOf[address(arg1)].field_0:
        revert with 0, 'Qore: invalid market'
    if arg2 > 25 * 10^13 * 3600:
        revert with 0, 'Qore: invalid collateral factor'
    if arg2:
        require ext_code.size(0x20e5e35ba29dc3b540a1aee781d0814d5c77bce6)
        staticcall 0x20e5e35ba29dc3b540a1aee781d0814d5c77bce6.getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Qore: invalid underlying price'
    marketInfoOf[address(arg1)].field_512 = arg2
    emit CollateralFactorUpdated(address(arg1), arg2);
}

function transferTokens(address arg1, address arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor152 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor152 = 2
    idx = 0
    while idx < markets.length:
        mem[0] = 205
        if markets[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        require ext_code.size(msg.sender)
        call msg.sender.0xc23379da with:
             gas gas_remaining wei
            args 0, 0, address(arg2), address(arg3), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_7bc2c30eAddress)
        call sub_7bc2c30eAddress.notifyTransferred(address arg1, address arg2, address arg3) with:
             gas gas_remaining wei
            args msg.sender, address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor152 = 1
    revert with 0, 'Qore: caller should be market'
}

function allMarkets() {
    mem[64] = (32 * markets.length) + 128
    mem[96] = markets.length
    if not markets.length:
        mem[(32 * markets.length) + 128] = 32
        mem[(32 * markets.length) + 160] = markets.length
        idx = 0
        s = 128
        t = (32 * markets.length) + 192
        while idx < markets.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * markets.length) + 128
           len (96 * markets.length) + 64
    mem[128] = address(markets.field_0)
    idx = 128
    s = 0
    while (32 * markets.length) + 96 > idx:
        mem[idx + 32] = markets[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * markets.length) + 128] = 32
    mem[(32 * markets.length) + 160] = markets.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < markets.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * markets.length) + -mem[64] + 192
}

function sub_d136af44(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ('cd', 4).length:
        revert with 0, 'Qore: invalid data'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'Qore: invalid data'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 206
        marketInfoOf[address(cd[((32 * idx) + cd[4] + 36)])].field_768 = cd[((32 * idx) + cd[36] + 36)]
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 36).length
        mem[96] = cd[((32 * idx) + cd[36] + 36)]
        emit 0x638a463c: cd[((32 * idx) + cd[36] + 36)], address(cd[((32 * idx) + cd[4] + 36)])
        idx = idx + 1
        continue 
}

function sub_186db48f(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ('cd', 4).length:
        revert with 0, 'Qore: invalid data'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'Qore: invalid data'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 206
        marketInfoOf[address(cd[((32 * idx) + cd[4] + 36)])].field_256 = cd[((32 * idx) + cd[36] + 36)]
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 36).length
        mem[96] = cd[((32 * idx) + cd[36] + 36)]
        emit BorrowCapUpdated(cd[((32 * idx) + cd[36] + 36)], address(cd[((32 * idx) + cd[4] + 36)]));
        idx = idx + 1
        continue 
}

function enterMarkets(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
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
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if not marketInfoOf[mem[(32 * idx) + 140 len 20]].field_0:
            revert with 0, 'Qore: invalid market'
        mem[0] = msg.sender
        mem[32] = sha3(address(mem[(32 * idx) + 128]), 210)
        if not stor210[address(mem[(32 * idx) + 128])][address(msg.sender)]:
            stor210[address(mem[(32 * idx) + 128])][address(msg.sender)] = 1
            mem[32] = 209
            sub_a2a2d5bb[address(msg.sender)].field_0++
            mem[0] = sha3(address(msg.sender), 209)
            sub_a2a2d5bb[address(msg.sender)][sub_a2a2d5bb[address(msg.sender)].field_0].field_0 = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + 160] = msg.sender
            emit MarketEntered(mem[(32 * arg1.length) + 128], msg.sender);
        idx = idx + 1
        continue 
}

function removeMarket(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not marketInfoOf[address(arg1)].field_0:
        revert with 0, 'Qore: unlisted market'
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Qore: cannot remove market'
    require ext_code.size(arg1)
    staticcall arg1.totalBorrow() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Qore: cannot remove market'
    idx = 0
    while idx < markets.length:
        mem[0] = 205
        if markets[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        require markets.length - 1 < markets.length
        require idx < markets.length
        markets[idx].field_0 = markets[markets.length].field_0
        require markets.length
        markets[markets.length].field_0 = 0
        markets.length--
        marketInfoOf[address(arg1)].field_0 = 0
        marketInfoOf[address(arg1)].field_256 = 0
        marketInfoOf[address(arg1)].field_512 = 0
        marketInfoOf[address(arg1)].field_768 = 0
}

function marketListOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[64] = (32 * sub_a2a2d5bb[address(arg1)].field_0) + 128
    mem[96] = sub_a2a2d5bb[address(arg1)].field_0
    if not sub_a2a2d5bb[address(arg1)].field_0:
        mem[(32 * sub_a2a2d5bb[address(arg1)].field_0) + 128] = 32
        mem[(32 * sub_a2a2d5bb[address(arg1)].field_0) + 160] = sub_a2a2d5bb[address(arg1)].field_0
        idx = 0
        s = 128
        t = (32 * sub_a2a2d5bb[address(arg1)].field_0) + 192
        while idx < sub_a2a2d5bb[address(arg1)].field_0:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_a2a2d5bb[address(arg1)].field_0) + 128
           len (96 * sub_a2a2d5bb[address(arg1)].field_0) + 64
    mem[128] = sub_a2a2d5bb[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * sub_a2a2d5bb[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = sub_a2a2d5bb[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_a2a2d5bb[address(arg1)].field_0) + 128] = 32
    mem[(32 * sub_a2a2d5bb[address(arg1)].field_0) + 160] = sub_a2a2d5bb[address(arg1)].field_0
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < sub_a2a2d5bb[address(arg1)].field_0:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_a2a2d5bb[address(arg1)].field_0) + -mem[64] + 192
}

function exitMarket(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not marketInfoOf[address(arg1)].field_0:
        revert with 0, 'Qore: invalid market'
    if not stor210[address(arg1)][msg.sender]:
        revert with 0, 'Qore: must enter market'
    require ext_code.size(arg1)
    call arg1.accruedAccountSnapshot(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool(ceil32(return_data.size) + 288 <= test266151307())
    if ext_call.return_data[32] != 0:
        revert with 0, 'Qore: borrow balance must be zero'
    require ext_code.size(qValidatorAddress)
    call qValidatorAddress.redeemAllowed(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Qore: cannot redeem'
    if not sub_a2a2d5bb[address(msg.sender)].field_0:
        revert with 0, 'Qore: cannot pop user market'
    stor210[address(arg1)][address(msg.sender)] = 0
    idx = 0
    while idx < sub_a2a2d5bb[address(msg.sender)].field_0:
        mem[32] = 209
        require idx < sub_a2a2d5bb[address(msg.sender)].field_0
        mem[0] = sha3(address(msg.sender), 209)
        if sub_a2a2d5bb[address(msg.sender)][idx].field_0 != arg1:
            idx = idx + 1
            continue 
        require sub_a2a2d5bb[address(msg.sender)].field_0 - 1 < sub_a2a2d5bb[address(msg.sender)].field_0
        require idx < sub_a2a2d5bb[address(msg.sender)].field_0
        sub_a2a2d5bb[address(msg.sender)][idx].field_0 = sub_a2a2d5bb[address(msg.sender)][sub_a2a2d5bb[address(msg.sender)].field_0].field_0
        require sub_a2a2d5bb[address(msg.sender)].field_0
        sub_a2a2d5bb[address(msg.sender)][sub_a2a2d5bb[address(msg.sender)].field_0].field_0 = 0
        sub_a2a2d5bb[address(msg.sender)].field_0--
        emit MarketExited(address(arg1), msg.sender);
    emit MarketExited(address(arg1), msg.sender);
}

function sub_66577bcc(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not sub_5cac95c1Address:
        revert with 0, 'Qore: qMultiplexer is not set'
    if sub_5cac95c1Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Qore: caller is not the qMultiplexer'
    idx = 0
    while idx < markets.length:
        mem[0] = 205
        require ext_code.size(markets[idx].field_0)
        staticcall markets[idx].field_0.underlying() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _48 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_48] == mem[_48 + 12 len 20]
        if mem[_48 + 12 len 20] != address(arg1):
            idx = idx + 1
            continue 
        require idx < markets.length
        mem[0] = 205
        mem[mem[64] + 4] = msg.sender
        if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == address(arg1):
            mem[mem[64] + 36] = msg.value
            require ext_code.size(markets[idx].field_0)
            call markets[idx].field_0.0xabdb5ea8 with:
               value msg.value wei
                 gas gas_remaining wei
                args msg.sender, msg.value
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _69 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require ext_code.size(sub_7bc2c30eAddress)
            call sub_7bc2c30eAddress.notifyBorrowUpdated(address arg1, address arg2) with:
                 gas gas_remaining wei
                args markets[idx].field_0, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            return memory
              from _69
               len 32
        mem[mem[64] + 36] = arg2
        require ext_code.size(markets[idx].field_0)
        call markets[idx].field_0.0xabdb5ea8 with:
             gas gas_remaining wei
            args msg.sender, arg2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _70 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require ext_code.size(sub_7bc2c30eAddress)
        call sub_7bc2c30eAddress.notifyBorrowUpdated(address arg1, address arg2) with:
             gas gas_remaining wei
            args markets[idx].field_0, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return memory
          from _70
           len 32
    mem[mem[64] + 4] = msg.sender
    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == address(arg1):
        mem[mem[64] + 36] = msg.value
        require ext_code.size(0)
        call 0x0.0xabdb5ea8 with:
           value msg.value wei
             gas gas_remaining wei
            args msg.sender, msg.value
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _52 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require ext_code.size(sub_7bc2c30eAddress)
        call sub_7bc2c30eAddress.notifyBorrowUpdated(address arg1, address arg2) with:
             gas gas_remaining wei
            args 0, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return memory
          from _52
           len 32
    mem[mem[64] + 36] = arg2
    require ext_code.size(0)
    call 0x0.0xabdb5ea8 with:
         gas gas_remaining wei
        args msg.sender, arg2
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _53 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require ext_code.size(sub_7bc2c30eAddress)
    call sub_7bc2c30eAddress.notifyBorrowUpdated(address arg1, address arg2) with:
         gas gas_remaining wei
        args 0, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return memory
      from _53
       len 32
}

function initialize() {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        stor152 = 1
        closeFactor = 5 * 10^17
        liquidationIncentive = 11 * 10^17
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            stor152 = 1
            closeFactor = 5 * 10^17
            liquidationIncentive = 11 * 10^17
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                stor152 = 1
                closeFactor = 5 * 10^17
                liquidationIncentive = 11 * 10^17
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    stor152 = 1
                    closeFactor = 5 * 10^17
                    liquidationIncentive = 11 * 10^17
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        stor152 = 1
                        closeFactor = 5 * 10^17
                        liquidationIncentive = 11 * 10^17
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                            stor152 = 1
                            closeFactor = 5 * 10^17
                            liquidationIncentive = 11 * 10^17
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                            if uint8(stor0.field_8):
                                owner = msg.sender
                                emit OwnershipTransferred(0, msg.sender);
                                stor152 = 1
                                closeFactor = 5 * 10^17
                                liquidationIncentive = 11 * 10^17
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                owner = msg.sender
                                emit OwnershipTransferred(0, msg.sender);
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                if ext_code.size(this.address):
                                    if uint8(stor0.field_0):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    stor152 = 1
                                    closeFactor = 5 * 10^17
                                    liquidationIncentive = 11 * 10^17
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    if ext_code.size(this.address):
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                    if uint8(stor0.field_8):
                                        stor152 = 1
                                        closeFactor = 5 * 10^17
                                        liquidationIncentive = 11 * 10^17
                                    else:
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
                                        stor152 = 1
                                        uint8(stor0.field_8) = 0
                                        uint8(stor0.field_8) = 0
                                        closeFactor = 5 * 10^17
                                        liquidationIncentive = 11 * 10^17
                                        uint8(stor0.field_8) = 0
                                        uint8(stor0.field_8) = 0
}



}
