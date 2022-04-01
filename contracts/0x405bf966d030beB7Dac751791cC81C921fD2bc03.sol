contract main {




// =====================  Runtime code  =====================


#
#  - buy(uint256 arg1, uint256 arg2)
#
uint256 stor0;
uint8 stor1;
uint32 stor1;
address _governanceAddress; offset 8
uint256 stor1;
mapping of uint8 stor2;
uint8 stor3; offset 160
uint8 stor3; offset 168
uint128 stor3; offset 168
uint128 stor3; offset 160
address _dandyAddress;
uint256 _sellerRewardDandy;
uint256 _buyerRewardDandy;
uint256 _salesAmount;
array of struct salesPrice;
mapping of uint8 stor8;
uint256 _tipsFeeRate;
uint256 _baseRate;
address stor11;

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
    require arg1 == arg1
    return bool(stor8[arg1])
}

function _isRewardBuyerDandy() {
    return bool(uint8(stor3.field_168))
}

function _isRewardSellerDandy() {
    return bool(uint8(stor3.field_160))
}

function getSalesPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 > salesPrice.length:
        revert with 0, 'overflow'
    require arg1 < salesPrice.length
    return salesPrice[arg1].field_512
}

function _supportCurrency(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
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

function _dandy() {
    return _dandyAddress
}

function _fallback() payable {
    revert
}

function setBaseRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    _baseRate = arg1
}

function setTipsFeeWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    stor11 = arg1
}

function setTipsFeeRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    _tipsFeeRate = arg1
}

function setBuyerRewardDandy(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    _buyerRewardDandy = arg1
}

function setSellerRewardDandy(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    _sellerRewardDandy = arg1
}

function setDandyAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    require arg1
    _dandyAddress = arg1
}

function setIsRewardBuyerDandy(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    Mask(88, 0, stor3.field_168) = Mask(88, 0, arg1)
}

function setIsRewardSellerDandy(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    Mask(96, 0, stor3.field_160) = Mask(96, 0, arg1)
}

function addSupportNft(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    require arg1
    stor8[address(arg1)] = 1
    emit eveSupportNft(address(arg1), 1);
}

function removeSupportNft(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    require arg1
    stor8[address(arg1)] = 0
    emit eveSupportNft(address(arg1), 0);
}

function addSupportCurrency(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    if stor2[address(arg1)]:
        revert with 0, 'the currency have support'
    stor2[address(arg1)] = 1
    emit eveSupportCurrency(address(arg1), 1);
}

function setGovernance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    if not arg1:
        revert with 0, 'new governance the zero address'
    emit GovernanceTransferred(_governanceAddress, arg1);
    _governanceAddress = arg1
}

function removeSupportCurrency(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    if not stor2[address(arg1)]:
        revert with 0, 'the currency can not remove'
    stor2[address(arg1)] = 0
    emit eveSupportCurrency(address(arg1), 0);
}

function initialize(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if uint8(stor1.field_0):
        revert with 0, 'initialize: Already initialized!'
    _governanceAddress = msg.sender
    stor11 = arg1
    _tipsFeeRate = arg3
    _baseRate = arg4
    _dandyAddress = arg5
    Mask(96, 0, stor3.field_160) = 0
    Mask(88, 0, stor3.field_168) = 0
    _sellerRewardDandy = 10^15
    _buyerRewardDandy = 10^15
    stor0 = 1
    uint8(stor1.field_0) = 1
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if arg1 != this.address:
        return 0
    emit 0xb232cdeb: address(arg1), address(arg2), arg3, arg4, Array(len=arg5.length, data=arg5[all])
    return Mask(32, 224, sha3('onERC1155Received(address,addres', 's,uint256,uint256,bytes)'))
}

function cancelSales(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 > salesPrice.length:
        revert with 0, 'overflow'
    require arg1 < salesPrice.length
    if salesPrice[arg1].field_776 != msg.sender:
        if _governanceAddress != msg.sender:
            revert with 0, 'author & governance'
    if arg1 > salesPrice.length:
        revert with 0, 'overflow'
    require arg1 < salesPrice.length
    if salesPrice[arg1].field_768:
        revert with 0, 'sry, selling out'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require arg1 < salesPrice.length
    salesPrice[arg1].field_768 = 2
    require ext_code.size(salesPrice[arg1].field_1024)
    call salesPrice[arg1].field_1024.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
         gas gas_remaining wei
        args 0, 0, salesPrice[arg1].field_768, salesPrice[arg1].field_256, salesPrice[arg1].field_1280, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit eveCancelSales(salesPrice[arg1].field_256, arg1);
    stor0 = 1
}

function getSalesBuyers(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 > salesPrice.length:
        revert with 0, 'overflow'
    require arg1 < salesPrice.length
    if not salesPrice[arg1].field_2048:
        mem[(32 * salesPrice[arg1].field_2048) + 768] = salesPrice[arg1].field_2048
    else:
        mem[768] = stor[sha3((9 * arg1) + ('name', 'salesPrice', 7) + 8)].field_0
        idx = 768
        s = 0
        while (32 * salesPrice[arg1].field_2048) + 736 > idx:
            mem[idx + 32] = stor[s + sha3((9 * arg1) + ('name', 'salesPrice', 7) + 8)].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if not salesPrice[arg1].field_2048:
        mem[(64 * salesPrice[arg1].field_2048) + 800] = 32
        mem[(64 * salesPrice[arg1].field_2048) + 832] = salesPrice[arg1].field_2048
        idx = 0
        s = 768
        t = (64 * salesPrice[arg1].field_2048) + 864
        while idx < salesPrice[arg1].field_2048:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (64 * salesPrice[arg1].field_2048) + 800
           len (161 * salesPrice[arg1].field_2048) + 64
    mem[(32 * salesPrice[arg1].field_2048) + 800 len 32 * salesPrice[arg1].field_2048] = code.data[20044 len 32 * salesPrice[arg1].field_2048]
    mem[(64 * salesPrice[arg1].field_2048) + 800] = 32
    mem[(64 * salesPrice[arg1].field_2048) + 832] = salesPrice[arg1].field_2048
    idx = 0
    s = 768
    t = (64 * salesPrice[arg1].field_2048) + 864
    while idx < salesPrice[arg1].field_2048:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (64 * salesPrice[arg1].field_2048) + 800
       len (98 * salesPrice[arg1].field_2048) + 64
}

function seize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor1.field_0)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    if ext_code.size(arg1) <= 0:
        revert with 0, 'SafeERC20: call to non-contract'
    mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1.field_0), uint32(stor1.field_0), ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
    call arg1.mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
            if not mem[ceil32(return_data.size) + 228]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return ext_call.return_data[0]
}

function getSales(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 > salesPrice.length:
        revert with 0, 'overflow'
    require arg1 < salesPrice.length
    if not salesPrice[arg1].field_2048:
        mem[(32 * salesPrice[arg1].field_2048) + 768] = 32
        idx = 0
        s = 768
        t = (32 * salesPrice[arg1].field_2048) + 1152
        while idx < salesPrice[arg1].field_2048:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return 32, salesPrice[arg1].field_0, 
               salesPrice[arg1].field_256,
               salesPrice[arg1].field_512,
               salesPrice[arg1].field_768,
               salesPrice[arg1].field_768,
               salesPrice[arg1].field_1024,
               salesPrice[arg1].field_1280,
               salesPrice[arg1].field_1536,
               salesPrice[arg1].field_1792,
               320,
               salesPrice[arg1].field_2048,
               mem[(32 * salesPrice[arg1].field_2048) + 1152 len 32 * salesPrice[arg1].field_2048]
    mem[768] = stor[sha3((9 * arg1) + ('name', 'salesPrice', 7) + 8)].field_0
    idx = 768
    s = 0
    while (32 * salesPrice[arg1].field_2048) + 736 > idx:
        mem[idx + 32] = stor[s + sha3((9 * arg1) + ('name', 'salesPrice', 7) + 8)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * salesPrice[arg1].field_2048) + 768] = 32
    mem[(32 * salesPrice[arg1].field_2048) + 800] = salesPrice[arg1].field_0
    mem[(32 * salesPrice[arg1].field_2048) + 832] = salesPrice[arg1].field_256
    mem[(32 * salesPrice[arg1].field_2048) + 864] = salesPrice[arg1].field_512
    mem[(32 * salesPrice[arg1].field_2048) + 896] = salesPrice[arg1].field_768
    mem[(32 * salesPrice[arg1].field_2048) + 928] = salesPrice[arg1].field_768
    mem[(32 * salesPrice[arg1].field_2048) + 960] = salesPrice[arg1].field_1024
    mem[(32 * salesPrice[arg1].field_2048) + 992] = salesPrice[arg1].field_1280
    mem[(32 * salesPrice[arg1].field_2048) + 1024] = salesPrice[arg1].field_1536
    mem[(32 * salesPrice[arg1].field_2048) + 1056] = salesPrice[arg1].field_1792
    mem[(32 * salesPrice[arg1].field_2048) + 1088] = 320
    mem[(32 * salesPrice[arg1].field_2048) + 1120] = salesPrice[arg1].field_2048
    idx = 0
    s = 768
    t = (32 * salesPrice[arg1].field_2048) + 1152
    while idx < salesPrice[arg1].field_2048:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * salesPrice[arg1].field_2048) + 768
       len (96 * salesPrice[arg1].field_2048) + 384
}

function startSales(uint256 arg1, uint256 arg2, address arg3, uint256 arg4, address arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require arg3
    if not arg1:
        revert with 0, 'invalid token'
    if arg2 < 0:
        revert with 0, 'invalid price'
    if bool(stor8[address(arg3)]) != 1:
        revert with 0, 'cannot sales'
    if bool(stor2[address(arg5)]) != 1:
        revert with 0, 'not support currency'
    require ext_code.size(arg3)
    call arg3.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(this.address), arg1, arg4, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _salesAmount++
    mem[384] = 96
    mem[128] = arg1
    mem[224] = msg.sender
    mem[256] = arg3
    mem[160] = arg2
    mem[192] = 0
    mem[288] = arg4
    mem[320] = arg4
    mem[352] = arg5
    if not salesPrice.length:
        mem[416] = 0
        mem[640] = 0
        mem[704] = 96
        mem[448] = 0
        mem[544] = 0
        mem[576] = 0
        mem[480] = arg2
        mem[512] = 2
        mem[608] = 0
        mem[672] = 0
        salesPrice.length++
        salesPrice[salesPrice.length].field_0 = 0
        salesPrice[salesPrice.length].field_256 = 0
        salesPrice[salesPrice.length].field_512 = arg2
        salesPrice[salesPrice.length].field_768 = 2
        salesPrice[salesPrice.length].field_776 = 0
        salesPrice[salesPrice.length].field_1024 = 0
        salesPrice[salesPrice.length].field_1024 = 0
        salesPrice[salesPrice.length].field_1280 = 0
        salesPrice[salesPrice.length].field_1280 = 0
        salesPrice[salesPrice.length].field_1536 = 0
        salesPrice[salesPrice.length].field_1792 = 0
        salesPrice[salesPrice.length].field_2048 = 0
        salesPrice[salesPrice.length].field_2048 = _salesAmount
        if not _salesAmount:
            idx = 0
            while salesPrice[salesPrice.length].field_2048 > idx:
                stor[idx + sha3((9 * salesPrice.length) + ('name', 'salesPrice', 7) + 8)].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while (32 * _salesAmount) + 128 > idx:
                stor[s + sha3((9 * salesPrice.length) + ('name', 'salesPrice', 7) + 8)].field_0 = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * _salesAmount) + 31) >> 5
            while salesPrice[salesPrice.length].field_2048 > idx:
                stor[idx + sha3((9 * salesPrice.length) + ('name', 'salesPrice', 7) + 8)].field_0 = 0
                idx = idx + 1
                continue 
    salesPrice.length++
    salesPrice[salesPrice.length].field_0 = _salesAmount
    salesPrice[salesPrice.length].field_256 = arg1
    salesPrice[salesPrice.length].field_512 = arg2
    salesPrice[salesPrice.length].field_768 = 0
    salesPrice[salesPrice.length].field_1024 = 0
    salesPrice[salesPrice.length].field_776 = msg.sender
    salesPrice[salesPrice.length].field_1024 = arg3
    salesPrice[salesPrice.length].field_1280 = arg4
    salesPrice[salesPrice.length].field_1536 = arg4
    salesPrice[salesPrice.length].field_1792 = arg5
    salesPrice[salesPrice.length].field_2048 = _salesAmount
    if not _salesAmount:
        idx = 0
        while salesPrice[salesPrice.length].field_2048 > idx:
            stor[idx + sha3((9 * salesPrice.length) + ('name', 'salesPrice', 7) + 8)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * _salesAmount) + 128 > idx:
            stor[s + sha3((9 * salesPrice.length) + ('name', 'salesPrice', 7) + 8)].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * _salesAmount) + 31) >> 5
        while salesPrice[salesPrice.length].field_2048 > idx:
            stor[idx + sha3((9 * salesPrice.length) + ('name', 'salesPrice', 7) + 8)].field_0 = 0
            idx = idx + 1
            continue 
    if uint8(stor3.field_160):
        require ext_code.size(_dandyAddress)
        call _dandyAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, _sellerRewardDandy
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit eveNewSales(arg1, msg.sender, address(arg3), 0, arg2, arg4, arg5, _salesAmount);
    stor0 = 1
    return _salesAmount
}



}
