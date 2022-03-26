contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint8 stor1;
address _dandyAddress; offset 8
uint256 _salesAmount;
array of struct sales;
uint256 _minDurationTime;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;
uint8 _isStartUserSales;
uint8 _isRewardSellerDandy; offset 8
uint8 _isRewardBuyerDandy; offset 16
uint256 stor8; offset 16
uint256 stor8; offset 8
uint256 _sellerRewardDandy;
uint256 _buyerRewardDandy;
uint256 _tipsFeeRate;
uint256 _baseRate;
address stor13;
uint32 stor14;
address _governanceAddress;
uint256 stor14;

function _sellerRewardDandy() {
    return _sellerRewardDandy
}

function _buyerRewardDandy() {
    return _buyerRewardDandy
}

function _governance() {
    return address(_governanceAddress)
}

function _supportNft(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function _isRewardBuyerDandy() {
    return bool(_isRewardBuyerDandy)
}

function _isRewardSellerDandy() {
    return bool(_isRewardSellerDandy)
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
    return bool(_isStartUserSales)
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
    revert
}

function setBaseRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    _baseRate = arg1
}

function setTipsFeeWallet(address arg1) {
    require calldata.size - 4 >= 32
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    stor13 = arg1
}

function setTipsFeeRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    _tipsFeeRate = arg1
}

function setMinDurationTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    _minDurationTime = arg1
}

function setBuyerRewardDandy(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    _buyerRewardDandy = arg1
}

function setSellerRewardDandy(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    _sellerRewardDandy = arg1
}

function setIsStartUserSales(bool arg1) {
    require calldata.size - 4 >= 32
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    _isStartUserSales = uint8(arg1)
}

function addSeller(address arg1) {
    require calldata.size - 4 >= 32
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    require arg1
    stor5[address(arg1)] = 1
}

function setDandyAddress(address arg1) {
    require calldata.size - 4 >= 32
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    require arg1
    _dandyAddress = arg1
}

function removeSeller(address arg1) {
    require calldata.size - 4 >= 32
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    require arg1
    stor5[address(arg1)] = 0
}

function addSupportNft(address arg1) {
    require calldata.size - 4 >= 32
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    require arg1
    stor7[address(arg1)] = 1
}

function addVerifySeller(address arg1) {
    require calldata.size - 4 >= 32
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    require arg1
    stor6[address(arg1)] = 1
}

function removeSupportNft(address arg1) {
    require calldata.size - 4 >= 32
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    require arg1
    stor7[address(arg1)] = 0
}

function removeVerifySeller(address arg1) {
    require calldata.size - 4 >= 32
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    require arg1
    stor6[address(arg1)] = 0
}

function setIsRewardSellerDandy(bool arg1) {
    require calldata.size - 4 >= 32
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    Mask(248, 0, stor8.field_8) = Mask(248, 0, arg1)
}

function setIsRewardBuyerDandy(bool arg1) {
    require calldata.size - 4 >= 32
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    Mask(240, 0, stor8.field_16) = Mask(240, 0, arg1)
}

function setGovernance(address arg1) {
    require calldata.size - 4 >= 32
    if address(_governanceAddress) != msg.sender:
        revert with 0, 'not governance'
    if not arg1:
        revert with 0, 'new governance the zero address'
    emit GovernanceTransferred(address(_governanceAddress), arg1);
    address(_governanceAddress) = arg1
}

function initialize(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if stor1:
        revert with 0, 'initialize: Already initialized!'
    address(_governanceAddress) = msg.sender
    stor13 = arg1
    _minDurationTime = arg2
    _tipsFeeRate = arg3
    _baseRate = arg4
    stor0 = 1
    stor1 = 1
}

function getSalesEndTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > sales.length:
        revert with 0, 'overflow'
    require arg1 < sales.length
    if sales[arg1].field_512 + sales[arg1].field_768 < sales[arg1].field_512:
        revert with 0, 'SafeMath: addition overflow'
    return (sales[arg1].field_512 + sales[arg1].field_768)
}

function cancelSales(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > sales.length:
        revert with 0, 'overflow'
    require arg1 < sales.length
    if sales[arg1].field_1800 != msg.sender:
        if address(_governanceAddress) != msg.sender:
            revert with 0, 'author & governance'
    if arg1 > sales.length:
        revert with 0, 'overflow'
    require arg1 < sales.length
    if sales[arg1].field_2048:
        revert with 0, 'sry, selling out'
    if sales[arg1].field_1792:
        revert with 0, 'sry, selling out'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not _isStartUserSales:
        if bool(stor5[address(msg.sender)]) != 1:
            revert with 0, 'cannot sales'
    require arg1 < sales.length
    sales[arg1].field_1792 = 2
    require ext_code.size(sales[arg1].field_2304)
    call sales[arg1].field_2304.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(this.address), sales[arg1].field_1792, sales[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit eveCancelSales(sales[arg1].field_256, arg1);
    stor0 = 1
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 <= test266151307() and ceil32(arg4.length) + 128 >= 96
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

function seize(address arg1) {
    require calldata.size - 4 >= 32
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
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor14)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor14), uint32(stor14), ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
    call arg1.mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 228]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return ext_call.return_data[0]
}

function getSalesPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > sales.length:
        revert with 0, 'overflow'
    require arg1 < sales.length
    if sales[arg1].field_2048:
        return sales[arg1].field_1536
    if sales[arg1].field_1792 == 1:
        return sales[arg1].field_1536
    if sales[arg1].field_512 + sales[arg1].field_768 < sales[arg1].field_512:
        revert with 0, 'SafeMath: addition overflow'
    if sales[arg1].field_512 + sales[arg1].field_768 < block.timestamp:
        return sales[arg1].field_1280
    if sales[arg1].field_512 >= block.timestamp:
        return sales[arg1].field_1024
    if sales[arg1].field_1280 > sales[arg1].field_1024:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if sales[arg1].field_768 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    require sales[arg1].field_768
    if sales[arg1].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not block.timestamp - sales[arg1].field_512:
        if 0 > sales[arg1].field_1024:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return sales[arg1].field_1024
    require block.timestamp - sales[arg1].field_512
    if (block.timestamp * sales[arg1].field_1024 - sales[arg1].field_1280 / sales[arg1].field_768) - (sales[arg1].field_512 * sales[arg1].field_1024 - sales[arg1].field_1280 / sales[arg1].field_768) / block.timestamp - sales[arg1].field_512 != sales[arg1].field_1024 - sales[arg1].field_1280 / sales[arg1].field_768:
        revert with 0, 'SafeMath: multiplication overflow'
    if (block.timestamp * sales[arg1].field_1024 - sales[arg1].field_1280 / sales[arg1].field_768) - (sales[arg1].field_512 * sales[arg1].field_1024 - sales[arg1].field_1280 / sales[arg1].field_768) > sales[arg1].field_1024:
        revert with 0, 'SafeMath: subtraction overflow', 0
    return (sales[arg1].field_1024 - (block.timestamp * sales[arg1].field_1024 - sales[arg1].field_1280 / sales[arg1].field_768) + (sales[arg1].field_512 * sales[arg1].field_1024 - sales[arg1].field_1280 / sales[arg1].field_768))
}

function sub_4624428e(?) {
    require calldata.size - 4 >= 192
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require arg6
    if not arg1:
        revert with 0, 'invalid token'
    if arg4 + arg5 < arg4:
        revert with 0, 'SafeMath: addition overflow'
    if arg4 + arg5 <= block.timestamp:
        revert with 0, 'invalid start time'
    if arg5 < _minDurationTime:
        revert with 0, 'invalid duration'
    if arg2 < arg3:
        revert with 0, 'invalid price'
    if not _isStartUserSales:
        if bool(stor5[address(msg.sender)]) != 1:
            if bool(stor7[address(arg6)]) != 1:
                revert with 0, 'cannot sales'
    require ext_code.size(arg6)
    call arg6.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _salesAmount++
    sales.length++
    if not sales.length:
        sales[sales.length].field_0 = 0
        sales[sales.length].field_256 = 0
        sales[sales.length].field_512 = 0
        sales[sales.length].field_768 = 0
        sales[sales.length].field_1024 = 0
        sales[sales.length].field_1280 = 0
        sales[sales.length].field_1536 = 0
        sales[sales.length].field_1792 = 2
        sales[sales.length].field_1800 = 0
        sales[sales.length].field_2048 = 0
        sales[sales.length].field_2048 = 0
        sales[sales.length].field_2304 = 0
        sales[sales.length].field_2304 = 0
        sales[sales.length].field_2560 = 0
    sales[sales.length].field_0 = _salesAmount
    sales[sales.length].field_256 = arg1
    sales[sales.length].field_512 = arg4
    sales[sales.length].field_768 = arg5
    sales[sales.length].field_1024 = arg2
    sales[sales.length].field_1280 = arg3
    sales[sales.length].field_1536 = 0
    sales[sales.length].field_1792 = 0
    sales[sales.length].field_2048 = 0
    sales[sales.length].field_1800 = msg.sender
    sales[sales.length].field_2048 = 0
    sales[sales.length].field_2304 = 0
    sales[sales.length].field_2304 = arg6
    if _isRewardSellerDandy:
        require ext_code.size(_dandyAddress)
        call _dandyAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, _sellerRewardDandy
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if stor6[address(msg.sender)]:
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

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if arg1 > sales.length:
        revert with 0, 'overflow'
    require arg1 < sales.length
    if sales[arg1].field_2048:
        revert with 0, 'sry, selling out'
    if sales[arg1].field_1792:
        revert with 0, 'sry, selling out'
    if arg1 > sales.length:
        revert with 0, 'overflow'
    require arg1 < sales.length
    if sales[arg1].field_512 > block.timestamp:
        revert with 0, '!open'
    require arg1 < sales.length
    require ext_code.size(this.address)
    staticcall this.address.0x5a0b27e5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.value < ext_call.return_data[0]:
        revert with 0, 'umm.....  your price is too low'
    if not _isStartUserSales:
        if bool(stor5[address(msg.sender)]) != 1:
            revert with 0, 'cannot sales'
    require ext_code.size(this.address)
    staticcall this.address.0x5a0b27e5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > msg.value:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if msg.value - ext_call.return_data[0] > 0:
        call msg.sender with:
           value msg.value - ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if not ext_call.return_data[0]:
        if _baseRate <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require _baseRate
        if 0 / _baseRate > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if _isRewardBuyerDandy:
            require ext_code.size(_dandyAddress)
            call _dandyAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, _buyerRewardDandy
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if stor6[stor3[arg1].field_1792]:
                require ext_code.size(_dandyAddress)
                call _dandyAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, _buyerRewardDandy
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if 0 / _baseRate <= 0:
            call sales[arg1].field_1800 with:
               value ext_call.return_data[0] - (0 / _baseRate) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            call stor13 with:
               value 0 / _baseRate wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call sales[arg1].field_1800 with:
               value ext_call.return_data[0] - (0 / _baseRate) wei
                 gas 2300 * is_zero(value) wei
        require ext_code.size(sales[arg1].field_2304)
        call sales[arg1].field_2304.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, sales[arg1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sales[arg1].field_2048 = msg.sender
        sales[arg1].field_1536 = ext_call.return_data[0]
        sales[arg1].field_1792 = 1
        emit eveSales(sales[arg1].field_256, msg.sender, ext_call.return_data[0], 0 / _baseRate, arg1);
    else:
        require ext_call.return_data[0]
        if ext_call.return_data[0] * _tipsFeeRate / ext_call.return_data[0] != _tipsFeeRate:
            revert with 0, 'SafeMath: multiplication overflow'
        if _baseRate <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require _baseRate
        if ext_call.return_data[0] * _tipsFeeRate / _baseRate > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if _isRewardBuyerDandy:
            require ext_code.size(_dandyAddress)
            call _dandyAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, _buyerRewardDandy
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if stor6[stor3[arg1].field_1792]:
                require ext_code.size(_dandyAddress)
                call _dandyAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, _buyerRewardDandy
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if ext_call.return_data[0] * _tipsFeeRate / _baseRate <= 0:
            call sales[arg1].field_1800 with:
               value ext_call.return_data[0] - (ext_call.return_data[0] * _tipsFeeRate / _baseRate) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            call stor13 with:
               value ext_call.return_data[0] * _tipsFeeRate / _baseRate wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call sales[arg1].field_1800 with:
               value ext_call.return_data[0] - (ext_call.return_data[0] * _tipsFeeRate / _baseRate) wei
                 gas 2300 * is_zero(value) wei
        require ext_code.size(sales[arg1].field_2304)
        call sales[arg1].field_2304.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, sales[arg1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sales[arg1].field_2048 = msg.sender
        sales[arg1].field_1536 = ext_call.return_data[0]
        sales[arg1].field_1792 = 1
        emit eveSales(sales[arg1].field_256, msg.sender, ext_call.return_data[0], ext_call.return_data[0] * _tipsFeeRate / _baseRate, arg1);
    stor0 = 1
}



}
