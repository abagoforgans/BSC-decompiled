contract main {




// =====================  Runtime code  =====================


#
#  - buy(uint256 arg1, address arg2)
#
uint256 stor0;
uint8 stor1;
address _dandyAddress; offset 8
uint256 _salesAmount;
array of struct sales;
uint256 _minDurationTime;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;
uint8 stor8;
uint8 stor8; offset 8
uint8 stor8; offset 16
uint256 stor8; offset 16
uint256 stor8; offset 8
uint256 _sellerRewardDandy;
uint256 _buyerRewardDandy;
uint256 _tipsFeeRate;
uint256 _baseRate;
address stor13;
uint32 stor14;
uint128 stor14; offset 160
address _governanceAddress;
uint256 stor14;
uint256 stor14;
mapping of address _saleOnCurrency;
mapping of uint8 stor16;
mapping of struct _supportBuyCurrency;
mapping of uint256 deflationBaseRates;
mapping of address routers;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037084;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037085;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037086;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037087;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037088;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037089;
array of struct stor87903029871075914254377627908054574944891091886930582284385770809450030037090;
array of struct stor87903029871075914254377627908054574944891091886930582284385770809450030037091;
array of struct stor87903029871075914254377627908054574944891091886930582284385770809450030037092;

function _sellerRewardDandy() {
    return _sellerRewardDandy
}

function _buyerRewardDandy() {
    return _buyerRewardDandy
}

function _governance() {
    return _governanceAddress
}

function _supportNft(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function _isRewardBuyerDandy() {
    return bool(uint8(stor8.field_16))
}

function _supportBuyCurrency(address arg1) {
    require calldata.size - 4 >= 32
    return bool(_supportBuyCurrency[arg1].field_0), bool(_supportBuyCurrency[arg1].field_8), _supportBuyCurrency[arg1].field_256
}

function _isRewardSellerDandy() {
    return bool(uint8(stor8.field_8))
}

function routers(uint256 arg1) {
    require calldata.size - 4 >= 32
    return routers[arg1]
}

function _supportCurrency(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor16[arg1])
}

function deflationBaseRates(uint256 arg1) {
    require calldata.size - 4 >= 32
    return deflationBaseRates[arg1]
}

function _seller(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function getSales(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > sales.length:
        revert with 0, 'overflow'
    require arg1 < sales.length
    return sales[arg1].field_0, 
           sales[arg1].field_256,
           sales[arg1].field_512,
           sales[arg1].field_768,
           sales[arg1].field_1024,
           sales[arg1].field_1280,
           sales[arg1].field_1536,
           sales[arg1].field_1792,
           sales[arg1].field_1792,
           sales[arg1].field_2048,
           sales[arg1].field_2304
}

function _isStartUserSales() {
    return bool(uint8(stor8.field_0))
}

function _minDurationTime() {
    return _minDurationTime
}

function _baseRate() {
    return _baseRate
}

function _salesAmount() {
    return _salesAmount
}

function getDeflationBaseRate() {
    return deflationBaseRates[0]
}

function getRouter() {
    return routers[0]
}

function _saleOnCurrency(uint256 arg1) {
    require calldata.size - 4 >= 32
    return _saleOnCurrency[arg1]
}

function _tipsFeeRate() {
    return _tipsFeeRate
}

function _verifySeller(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function isVerifySeller(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > sales.length:
        revert with 0, 'overflow'
    require arg1 < sales.length
    return bool(stor6[stor3[arg1].field_1792])
}

function _dandy() {
    return _dandyAddress
}

function _fallback() payable {
  stop
}

function setBaseRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    _baseRate = arg1
}

function setTipsFeeWallet(address arg1) {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    stor13 = arg1
}

function setTipsFeeRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    _tipsFeeRate = arg1
}

function setIUniswapV2Router01(address arg1) {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    routers[0] = arg1
}

function setMinDurationTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    _minDurationTime = arg1
}

function setBuyerRewardDandy(uint256 arg1) {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    _buyerRewardDandy = arg1
}

function setSellerRewardDandy(uint256 arg1) {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    _sellerRewardDandy = arg1
}

function setIsStartUserSales(bool arg1) {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    uint8(stor8.field_0) = uint8(arg1)
}

function addSeller(address arg1) {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    require arg1
    stor5[address(arg1)] = 1
}

function setDandyAddress(address arg1) {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    require arg1
    _dandyAddress = arg1
}

function removeSeller(address arg1) {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    require arg1
    stor5[address(arg1)] = 0
}

function addSupportNft(address arg1) {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    require arg1
    stor7[address(arg1)] = 1
}

function addVerifySeller(address arg1) {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    require arg1
    stor6[address(arg1)] = 1
}

function removeSupportNft(address arg1) {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    require arg1
    stor7[address(arg1)] = 0
}

function removeVerifySeller(address arg1) {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    require arg1
    stor6[address(arg1)] = 0
}

function setIsRewardSellerDandy(bool arg1) {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    Mask(248, 0, stor8.field_8) = Mask(248, 0, arg1)
}

function setIsRewardBuyerDandy(bool arg1) {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    Mask(240, 0, stor8.field_16) = Mask(240, 0, arg1)
}

function setDeflationBaseRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    deflationBaseRates[0] = arg1
    emit 0xefe16bc3: arg1
}

function setGovernance(address arg1) {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    if not arg1:
        revert with 0, 'new governance the zero address'
    emit GovernanceTransferred(_governanceAddress, arg1);
    _governanceAddress = arg1
}

function addSupportCurrency(address arg1) {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    if stor16[address(arg1)]:
        revert with 0, 'the currency have support'
    stor16[address(arg1)] = 1
    emit eveSupportCurrency(address(arg1), 1);
}

function removeSupportCurrency(address arg1) {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    if not stor16[address(arg1)]:
        revert with 0, 'the currency can not remove'
    stor16[address(arg1)] = 0
    emit eveSupportCurrency(address(arg1), 0);
}

function getSalesEndTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > sales.length:
        revert with 0, 'overflow'
    require arg1 < sales.length
    if sales[arg1].field_768 + sales[arg1].field_512 < sales[arg1].field_512:
        revert with 0, 'SafeMath: addition overflow'
    return (sales[arg1].field_768 + sales[arg1].field_512)
}

function initialize(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if stor1:
        revert with 0, 'initialize: Already initialized!'
    uint256(stor14.field_0) = Mask(96, 0, stor14.field_160)
    stor13 = arg1
    _minDurationTime = arg2
    _tipsFeeRate = arg3
    _baseRate = arg4
    stor0 = 1
    stor1 = 1
}

function setSupportBuyCurrency(address arg1, bool arg2, bool arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    if arg3:
        if not arg4:
            revert with 0, 'deflationRate 0'
    _supportBuyCurrency[address(arg1)].field_0 = uint8(arg2)
    _supportBuyCurrency[address(arg1)].field_8 = Mask(248, 0, arg3)
    _supportBuyCurrency[address(arg1)].field_16 = Mask(240, 16, arg2) >> 16
    _supportBuyCurrency[address(arg1)].field_256 = arg4
    emit 0x368a3cce: address(arg1), arg2, arg3, arg4
}

function cancelSales(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > sales.length:
        revert with 0, 'overflow'
    require arg1 < sales.length
    if sales[arg1].field_1800 != msg.sender:
        if _governanceAddress != msg.sender:
            revert with 0, 'author & governance'
    if arg1 > sales.length:
        revert with 0, 'overflow'
    require arg1 < sales.length
    if sales[arg1].field_2048:
        revert with 0, 'sry, selling out'
    if sales[arg1].field_1792:
        revert with 0, 'sry, selling out'
    if 2 == stor0:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not uint8(stor8.field_0):
        if bool(stor5[msg.sender]) != 1:
            revert with 0, 'cannot sales'
    require arg1 < sales.length
    sales[arg1].field_1792 = 2
    require ext_code.size(sales[arg1].field_2304)
    call sales[arg1].field_2304.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(this.address), 0, sales[arg1].field_1800, sales[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit eveCancelSales(sales[arg1].field_256, arg1);
    stor0 = 1
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 >= 96 and ceil32(arg4.length) + 128 <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        mem[ceil32(arg4.length) + 128] = 0
    else:
        mem[ceil32(arg4.length) + 128] = arg1
        mem[ceil32(arg4.length) + 160] = arg2
        mem[ceil32(arg4.length) + 192] = arg3
        mem[ceil32(arg4.length) + 224] = 128
        mem[ceil32(arg4.length) + 256] = arg4.length
        emit eveNFTReceived(address rg1, address rg2, uint256 rg3, bytes rg4):
                            Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                            mem[arg4.length + 160 len (2 * ceil32(arg4.length)) + -arg4.length + 128],
        mem[ceil32(arg4.length) + 128] = 'onERC721Received(address,address'
        mem[ceil32(arg4.length) + 160] = ',uint256,bytes)'
        mem[ceil32(arg4.length) + 128] = Mask(32, 224, sha3(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length) + 15]))
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}

function getSalesPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > sales.length:
        revert with 0, 'overflow'
    require arg1 < sales.length
    if sales[arg1].field_2048:
        return sales[arg1].field_1536
    if 1 == sales[arg1].field_1792:
        return sales[arg1].field_1536
    if sales[arg1].field_768 + sales[arg1].field_512 < sales[arg1].field_512:
        revert with 0, 'SafeMath: addition overflow'
    if sales[arg1].field_768 + sales[arg1].field_512 < block.timestamp:
        return sales[arg1].field_1280
    if block.timestamp <= sales[arg1].field_512:
        return sales[arg1].field_1024
    if sales[arg1].field_1280 > sales[arg1].field_1024:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not sales[arg1].field_768:
        revert with 0, 'SafeMath: division by zero', 0
    if sales[arg1].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not block.timestamp - sales[arg1].field_512:
        if 0 > sales[arg1].field_1024:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return sales[arg1].field_1024
    if (block.timestamp * sales[arg1].field_1024 - sales[arg1].field_1280 / sales[arg1].field_768) - (sales[arg1].field_512 * sales[arg1].field_1024 - sales[arg1].field_1280 / sales[arg1].field_768) / block.timestamp - sales[arg1].field_512 != sales[arg1].field_1024 - sales[arg1].field_1280 / sales[arg1].field_768:
        revert with 0, 'SafeMath: multiplication overflow'
    if (block.timestamp * sales[arg1].field_1024 - sales[arg1].field_1280 / sales[arg1].field_768) - (sales[arg1].field_512 * sales[arg1].field_1024 - sales[arg1].field_1280 / sales[arg1].field_768) > sales[arg1].field_1024:
        revert with 0, 'SafeMath: subtraction overflow', 0
    return (sales[arg1].field_1024 - (block.timestamp * sales[arg1].field_1024 - sales[arg1].field_1280 / sales[arg1].field_768) + (sales[arg1].field_512 * sales[arg1].field_1024 - sales[arg1].field_1280 / sales[arg1].field_768))
}

function seize(address arg1) {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor14.field_0)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor14.field_0), uint32(stor14.field_0), ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
    call arg1.mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 228]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return ext_call.return_data[0]
}

function startSales(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, address arg7) {
    require calldata.size - 4 >= 224
    if 2 == stor0:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require arg6
    if not arg1:
        revert with 0, 'invalid token'
    if arg5 + arg4 < arg4:
        revert with 0, 'SafeMath: addition overflow'
    if arg5 + arg4 <= block.timestamp:
        revert with 0, 'invalid start time'
    if arg5 < _minDurationTime:
        revert with 0, 'invalid duration'
    if arg2 < arg3:
        revert with 0, 'invalid price'
    if not uint8(stor8.field_0):
        if bool(stor5[msg.sender]) != 1:
            if bool(stor7[address(arg6)]) != 1:
                revert with 0, 'cannot sales'
    if bool(stor16[address(arg7)]) != 1:
        revert with 0, 'not support currency'
    require ext_code.size(arg6)
    call arg6.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _salesAmount++
    _saleOnCurrency[stor2] = arg7
    sales.length++
    if not sales.length:
        sales[sales.length].field_0 = 0
        storC257[stor3.length] = 0
        storC257[stor3.length] = 0
        storC257[stor3.length] = 0
        storC257[stor3.length] = 0
        storC257[stor3.length] = 0
        storC257[stor3.length] = 0
        storC257[stor3.length].field_0 = 2
        storC257[stor3.length].field_8 = 0
        storC257[stor3.length].field_256 = 0
        storC257[stor3.length].field_0 = 0
        storC257[stor3.length].field_256 = 0
        storC257[stor3.length].field_0 = 0
        storC257[stor3.length].field_256 = 0
    sales[sales.length].field_0 = _salesAmount
    storC257[stor3.length] = arg1
    storC257[stor3.length] = arg4
    storC257[stor3.length] = arg5
    storC257[stor3.length] = arg2
    storC257[stor3.length] = arg3
    storC257[stor3.length] = 0
    storC257[stor3.length].field_0 = 0
    storC257[stor3.length].field_8 = msg.sender
    storC257[stor3.length].field_256 = 0
    storC257[stor3.length].field_0 = 0
    storC257[stor3.length].field_256 = 0
    storC257[stor3.length].field_0 = arg6
    if uint8(stor8.field_8):
        require ext_code.size(_dandyAddress)
        call _dandyAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, _sellerRewardDandy
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if stor6[msg.sender]:
            require ext_code.size(_dandyAddress)
            call _dandyAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, _sellerRewardDandy
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    emit eveNewSales(arg1, msg.sender, address(arg6), 0, arg4, arg5, arg2, arg3, 0, _salesAmount);
    stor0 = 1
    return _salesAmount
}



}
