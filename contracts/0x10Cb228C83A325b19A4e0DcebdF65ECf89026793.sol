contract main {




// =====================  Runtime code  =====================


#
#  - workForDaoFund()
#  - rebalance()
#
uint8 initialized; offset 160
uint8 publicAllowed; offset 168
uint128 stor0; offset 168
address operatorAddress;
uint256 stor0;
uint256 stor0;
uint256 dollarPriceToSell;
uint256 dollarPriceToBuy;
address dollarAddress;
address bondAddress;
address shareAddress;
address busdAddress;
address wbnbAddress;
uint32 stor8;
address boardroomAddress;
uint256 stor8;
address sub_10792c9aAddress;
array of address uniswapPaths;
array of struct expansionPercent;
array of struct contractionPercent;

function sub_10792c9a(?) {
    return sub_10792c9aAddress
}

function initialized() {
    return bool(initialized)
}

function uniswapPaths(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 < uint256(uniswapPaths[arg1][arg2])
    return address(uniswapPaths[arg1][arg2][arg3])
}

function busd() {
    return busdAddress
}

function dollar() {
    return dollarAddress
}

function operator() {
    return operatorAddress
}

function boardroom() {
    return address(boardroomAddress)
}

function dollarPriceToSell() {
    return dollarPriceToSell
}

function bond() {
    return bondAddress
}

function wbnb() {
    return wbnbAddress
}

function share() {
    return shareAddress
}

function expansionPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < expansionPercent.length
    return expansionPercent[arg1].field_0
}

function contractionPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < contractionPercent.length
    return contractionPercent[arg1].field_0
}

function publicAllowed() {
    return bool(publicAllowed)
}

function dollarPriceToBuy() {
    return dollarPriceToBuy
}

function _fallback() payable {
    revert
}

function getDollarPrice() {
    require ext_code.size(address(boardroomAddress))
    staticcall address(boardroomAddress).0xe1f095aa with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function earned() {
    require ext_code.size(address(boardroomAddress))
    staticcall address(boardroomAddress).earned(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setOperator(address arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x64436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    operatorAddress = arg1
}

function setPublicAllowed(bool arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x64436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    Mask(88, 0, stor0.field_168) = Mask(88, 0, arg1)
}

function exitBoardroom() {
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x64436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    require ext_code.size(address(boardroomAddress))
    call address(boardroomAddress).exit() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setDollarPriceToBuy(uint256 arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x64436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    if arg1 < 5 * 10^17:
        revert with 0, '_dollarPriceToBuy: out of range'
    if arg1 > 105 * 10^16:
        revert with 0, '_dollarPriceToBuy: out of range'
    dollarPriceToBuy = arg1
}

function setDollarPriceToSell(uint256 arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x64436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    if arg1 < 95 * 10^16:
        revert with 0, '_dollarPriceToSell: out of range'
    if arg1 > 2 * 10^18:
        revert with 0, '_dollarPriceToSell: out of range'
    dollarPriceToSell = arg1
}

function withdrawShare(uint256 arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x64436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    require ext_code.size(address(boardroomAddress))
    call address(boardroomAddress).withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function grandFund(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x64436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function setExpansionPercent(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x64436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 + arg2 + arg1 != 10000:
        revert with 0, '!100%'
    require 0 < expansionPercent.length
    uint256(expansionPercent.field_0) = arg1
    require 1 < expansionPercent.length
    uint256(expansionPercent.field_256) = arg2
    require 2 < expansionPercent.length
    uint256(expansionPercent.field_512) = arg3
}

function setContractionPercent(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x64436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 + arg2 + arg1 != 10000:
        revert with 0, '!100%'
    require 0 < contractionPercent.length
    uint256(contractionPercent.field_0) = arg1
    require 1 < contractionPercent.length
    uint256(contractionPercent.field_256) = arg2
    require 2 < contractionPercent.length
    uint256(contractionPercent.field_512) = arg3
}

function collectShareRewards() {
    if not publicAllowed:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        69,
                        0x64436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f72206e6f72207075626c69632063616c6c206e6f7420616c6c6f7765,
                        mem[233 len 27]
    require ext_code.size(shareAddress)
    staticcall shareAddress.unclaimedTreasuryFund() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(shareAddress)
        call shareAddress.claimRewards() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function tokenBalances() {
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(busdAddress)
    staticcall busdAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wbnbAddress)
    staticcall wbnbAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] < 0:
        revert with 0, 'SafeMath: addition overflow'
    return ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 3 * ext_call.return_data[0]
}

function setUnirouterPath(address arg1, address arg2, address[] arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    if operatorAddress != msg.sender:
        revert with 0, 
                    32,
                    41,
                    0x64436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[(32 * arg3.length) + 237 len 23]
    uint256(uniswapPaths[address(arg1)][address(arg2)]) = arg3.length
    if not arg3.length:
        idx = 0
        while uint256(uniswapPaths[address(arg1)][address(arg2)]) > idx:
            address(uniswapPaths[address(arg1)][address(arg2)][idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg3.length) + 128 > idx:
            address(uniswapPaths[address(arg1)][address(arg2)][s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        while uint256(uniswapPaths[address(arg1)][address(arg2)]) > idx:
            address(uniswapPaths[address(arg1)][address(arg2)][idx]) = 0
            idx = idx + 1
            continue 
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7) {
    require calldata.size - 4 >= 224
    if initialized:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe436f6d6d756e69747946756e643a20616c726561647920696e697469616c697a65,
                    mem[198 len 30]
    dollarAddress = arg1
    bondAddress = arg2
    shareAddress = arg3
    busdAddress = arg4
    wbnbAddress = arg5
    address(boardroomAddress) = arg6
    sub_10792c9aAddress = arg7
    dollarPriceToSell = 15 * 10^17
    dollarPriceToBuy = 8 * 10^17
    mem[96] = 3000
    mem[128] = 6800
    mem[160] = 200
    expansionPercent.length = 3
    s = 0
    idx = 96
    while 192 > idx:
        expansionPercent[s].field_0 = mem[idx + 30 len 2]
        expansionPercent[s].field_16 = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 3
    while expansionPercent.length > idx:
        expansionPercent[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[192] = 8800
    mem[224] = 1160
    mem[256] = 40
    contractionPercent.length = 3
    s = 0
    idx = 192
    while 288 > idx:
        contractionPercent[s].field_0 = mem[idx + 30 len 2]
        contractionPercent[s].field_16 = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 3
    while contractionPercent.length > idx:
        contractionPercent[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint256(stor0.field_0) = msg.sender or 0x10000000000000000000000000000000000000000 or 0x1000000000000000000000000000000000000000000 or Mask(80, 176, uint256(stor0.field_0)) or Mask(88, 168, Mask(168, 0, stor0.field_0)) or Mask(96, 160, operatorAddress)
    emit Initialized(block.number, msg.sender);
}

function tokenPercents() {
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(busdAddress)
    staticcall busdAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wbnbAddress)
    staticcall wbnbAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] < 0:
        revert with 0, 'SafeMath: addition overflow'
    if 3 * ext_call.return_data[0] <= 0:
        return 0
    if not ext_call.return_data[0]:
        if not 3 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            if not 3 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not 3 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return 0 / 3 * ext_call.return_data[0], 0 / 3 * ext_call.return_data[0], 0 / 3 * ext_call.return_data[0]
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 3 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return 0 / 3 * ext_call.return_data[0], 
                   0 / 3 * ext_call.return_data[0],
                   100 * ext_call.return_data[0] / 3 * ext_call.return_data[0]
        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not 3 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            if not 3 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return 0 / 3 * ext_call.return_data[0], 
                   100 * ext_call.return_data[0] / 3 * ext_call.return_data[0],
                   0 / 3 * ext_call.return_data[0]
        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not 3 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return 0 / 3 * ext_call.return_data[0], 
               100 * ext_call.return_data[0] / 3 * ext_call.return_data[0],
               100 * ext_call.return_data[0] / 3 * ext_call.return_data[0]
    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not 3 * ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[0]:
        if not 3 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            if not 3 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return 100 * ext_call.return_data[0] / 3 * ext_call.return_data[0], 
                   0 / 3 * ext_call.return_data[0],
                   0 / 3 * ext_call.return_data[0]
        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not 3 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return 100 * ext_call.return_data[0] / 3 * ext_call.return_data[0], 
               0 / 3 * ext_call.return_data[0],
               100 * ext_call.return_data[0] / 3 * ext_call.return_data[0]
    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not 3 * ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[0]:
        if not 3 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return 100 * ext_call.return_data[0] / 3 * ext_call.return_data[0], 
               100 * ext_call.return_data[0] / 3 * ext_call.return_data[0],
               0 / 3 * ext_call.return_data[0]
    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not 3 * ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return 100 * ext_call.return_data[0] / 3 * ext_call.return_data[0], 
           100 * ext_call.return_data[0] / 3 * ext_call.return_data[0],
           100 * ext_call.return_data[0] / 3 * ext_call.return_data[0]
}

function executeTransaction(address arg1, uint256 arg2, string arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + 160
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 160] = 0
    if operatorAddress != msg.sender:
        revert with 0, 
                    32,
                    41,
                    0x64436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[ceil32(arg3.length) + ceil32(arg4.length) + 269 len 23]
    if 0 == arg3.length:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] = mem[ceil32(arg3.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
        call arg1 with:
           funct Mask(32, -(8 * ceil32(arg4.length) + -arg4.length + 4) + 256, 0) >> -(8 * ceil32(arg4.length) + -arg4.length + 4) + 256
           value arg2 wei
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + ceil32(arg4.length) + 164 len arg4.length - 4]
        if not return_data.size:
            mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + 288
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = 66
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len 66] = 0x72436f6d6d756e69747946756e643a3a657865637574655472616e73616374696f6e3a205472616e73616374696f6e20657865637574696f6e207265766572746564
            if not ext_call.success:
                revert with 0, 
                            32,
                            66,
                            0x72436f6d6d756e69747946756e643a3a657865637574655472616e73616374696f6e3a205472616e73616374696f6e20657865637574696f6e207265766572746564, mem[ceil32(arg3.length) + ceil32(arg4.length) + 258 len 30] >> 256,
                            mem[ceil32(arg3.length) + ceil32(arg4.length) + 350 len 2]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 288] = arg2
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 320] = 96
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 384] = arg3.length
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 416 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length + 128
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 416] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 448 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                emit ExecuteTransaction(address rg1, uint256 rg2, string rg3, bytes rg4):
                                        mem[ceil32(arg3.length) + ceil32(arg4.length) + 288 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + 160],
                                        arg1,
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 448] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 480 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                emit ExecuteTransaction(address rg1, uint256 rg2, string rg3, bytes rg4):
                                        mem[ceil32(arg3.length) + ceil32(arg4.length) + 288 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 192],
                                        arg1,
            return Array(len=arg3.length, data=arg3[all])
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = return_data.size
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 289
        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 161] = 66
        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 193 len 66] = 0x72436f6d6d756e69747946756e643a3a657865637574655472616e73616374696f6e3a205472616e73616374696f6e20657865637574696f6e207265766572746564
        if not ext_call.success:
            revert with 0, 
                        32,
                        66,
                        0x72436f6d6d756e69747946756e643a3a657865637574655472616e73616374696f6e3a205472616e73616374696f6e20657865637574696f6e207265766572746564, mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 259 len 30] >> 256,
                        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 351 len 2]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 289] = arg2
        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 321] = 96
        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 385] = arg3.length
        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 417 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 353] = arg3.length + 128
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 417] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 449 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                emit ExecuteTransaction(address rg1, uint256 rg2, string rg3, bytes rg4):
                                        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 289 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + 160],
                                        arg1,
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 449] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 481 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                emit ExecuteTransaction(address rg1, uint256 rg2, string rg3, bytes rg4):
                                        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 289 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 192],
                                        arg1,
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 417] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + -(arg3.length % 32) + 449 len arg3.length % 32]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 353] = floor32(arg3.length) + 160
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 449] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 481 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                emit ExecuteTransaction(address rg1, uint256 rg2, string rg3, bytes rg4):
                                        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 289 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + 192],
                                        arg1,
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 481] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 513 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                emit ExecuteTransaction(address rg1, uint256 rg2, string rg3, bytes rg4):
                                        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 289 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + 224],
                                        arg1,
        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 289] = 32
        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 321] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 353 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])]
        if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32:
            return memory
              from ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 289
               len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] + 64
        mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 353] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 385 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32]
        return memory
          from ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 289
           len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + 96
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = Mask(32, 224, sha3(arg3[all]))
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 196 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 196] = mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) + 256, mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 196])
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg4.length + 4
    mem[64] = arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 196
    _249 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 196 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])]
    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 228 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 224 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32]
    call arg1.mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 196 len 4] with:
       value arg2 wei
         gas gas_remaining wei
        args mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 200 len _249 - 4]
    if not return_data.size:
        mem[64] = arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 324
        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 196] = 66
        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 228 len 66] = 0x72436f6d6d756e69747946756e643a3a657865637574655472616e73616374696f6e3a205472616e73616374696f6e20657865637574696f6e207265766572746564
        if not ext_call.success:
            revert with 0, 
                        32,
                        66,
                        0x72436f6d6d756e69747946756e643a3a657865637574655472616e73616374696f6e3a205472616e73616374696f6e20657865637574696f6e207265766572746564, mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 294 len 30] >> 256,
                        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 386 len 2]
        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 324] = arg2
        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 356] = 96
        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 420] = arg3.length
        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 452 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 388] = arg3.length + 128
        mem[arg3.length + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 452] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[arg3.length + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 484 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
            emit ExecuteTransaction(address rg1, uint256 rg2, string rg3, bytes rg4):
                                    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 324 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + 160],
                                    arg1,
        else:
            mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 484] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 516 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
            emit ExecuteTransaction(address rg1, uint256 rg2, string rg3, bytes rg4):
                                    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 192],
                                    arg1,
        return Array(len=arg3.length, data=arg3[all])
    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 196] = return_data.size
    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 325
    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 197] = 66
    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 229 len 66] = 0x72436f6d6d756e69747946756e643a3a657865637574655472616e73616374696f6e3a205472616e73616374696f6e20657865637574696f6e207265766572746564
    if not ext_call.success:
        revert with 0, 
                    32,
                    66,
                    0x72436f6d6d756e69747946756e643a3a657865637574655472616e73616374696f6e3a205472616e73616374696f6e20657865637574696f6e207265766572746564, mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 295 len 30] >> 256,
                    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 387 len 2]
    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 325] = arg2
    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 357] = 96
    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 421] = arg3.length
    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 453 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = arg3.length + 128
        mem[arg3.length + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 453] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[arg3.length + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 485 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
            emit ExecuteTransaction(address rg1, uint256 rg2, string rg3, bytes rg4):
                                    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 325 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + 160],
                                    arg1,
        else:
            mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 485] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 517 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
            emit ExecuteTransaction(address rg1, uint256 rg2, string rg3, bytes rg4):
                                    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 325 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 192],
                                    arg1,
    else:
        mem[floor32(arg3.length) + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 453] = mem[floor32(arg3.length) + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + -(arg3.length % 32) + 485 len arg3.length % 32]
        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = floor32(arg3.length) + 160
        mem[floor32(arg3.length) + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 485] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[floor32(arg3.length) + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 517 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
            emit ExecuteTransaction(address rg1, uint256 rg2, string rg3, bytes rg4):
                                    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 325 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + 192],
                                    arg1,
        else:
            mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 517] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 549 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
            emit ExecuteTransaction(address rg1, uint256 rg2, string rg3, bytes rg4):
                                    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 325 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + 224],
                                    arg1,
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function claimAndRestake() {
    if publicAllowed:
        require ext_code.size(address(boardroomAddress))
        staticcall address(boardroomAddress).canClaimReward(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(address(boardroomAddress))
            staticcall address(boardroomAddress).earned(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                require ext_code.size(shareAddress)
                staticcall shareAddress.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if not ext_code.size(shareAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0
                    call shareAddress with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args 0, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0
                        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor8):
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if ext_call.return_data[0]:
                            require ext_code.size(shareAddress)
                            staticcall shareAddress.allowance(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(boardroomAddress)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[382 len 10]
                        if not ext_code.size(shareAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[424 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0 len 28]
                        call shareAddress with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[488 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0
                            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor8):
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                        else:
                            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[456]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                        require ext_code.size(address(boardroomAddress))
                        call address(boardroomAddress).stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            if ext_call.return_data[0]:
                                require ext_code.size(shareAddress)
                                staticcall shareAddress.allowance(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args this.address, address(boardroomAddress)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[ceil32(return_data.size) + 383 len 10]
                            if not ext_code.size(shareAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0 len 28]
                            mem[ceil32(return_data.size) + 517 len 4] = 0
                            call shareAddress with:
                               funct uint32(stor8)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0
                                if not approve(address rg1, uint256 rg2), Mask(224, 0, stor8):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                                require ext_code.size(address(boardroomAddress))
                                call address(boardroomAddress).stake(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                            else:
                                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 457]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                require ext_code.size(address(boardroomAddress))
                                call address(boardroomAddress).stake(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        else:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                            if not ext_call.return_data[0]:
                                if not ext_code.size(shareAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0 len 28]
                                mem[ceil32(return_data.size) + 517 len 4] = 0
                                call shareAddress with:
                                   funct uint32(stor8)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0
                                    if not approve(address rg1, uint256 rg2), Mask(224, 0, stor8):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                    require ext_code.size(address(boardroomAddress))
                                    call address(boardroomAddress).stake(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                else:
                                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 457]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    require ext_code.size(address(boardroomAddress))
                                    call address(boardroomAddress).stake(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            else:
                                require ext_code.size(shareAddress)
                                staticcall shareAddress.allowance(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args this.address, address(boardroomAddress)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[ceil32(return_data.size) + 383 len 10]
                                if not ext_code.size(shareAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0 len 28]
                                mem[ceil32(return_data.size) + 489 len 0] = 0
                                call shareAddress with:
                                   funct uint32(stor8)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0
                                    if not approve(address rg1, uint256 rg2), Mask(224, 0, stor8):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 457]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
                                require ext_code.size(address(boardroomAddress))
                                call address(boardroomAddress).stake(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(address(boardroomAddress))
                call address(boardroomAddress).claimReward() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(shareAddress)
                staticcall shareAddress.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if not ext_code.size(shareAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0
                    mem[324 len 0] = 0
                    call shareAddress with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0
                        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor8):
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if ext_call.return_data[0]:
                            require ext_code.size(shareAddress)
                            staticcall shareAddress.allowance(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(boardroomAddress)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[382 len 10]
                        if not ext_code.size(shareAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[424 len 64] = 0, address(boardroomAddress), ext_call.return_data[0 len 28]
                        call shareAddress with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args ext_call.return_data[0], mem[360 len 28], mem[488 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0
                            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor8):
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                        else:
                            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[456]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
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
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        if not ext_call.return_data[0]:
                            if not ext_code.size(shareAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 425 len 64] = 0, address(boardroomAddress), ext_call.return_data[0 len 28]
                            call shareAddress with:
                               funct uint32(stor8)
                                 gas gas_remaining wei
                                args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0
                                if not approve(address rg1, uint256 rg2), Mask(224, 0, stor8):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                            else:
                                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 457]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        else:
                            require ext_code.size(shareAddress)
                            staticcall shareAddress.allowance(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(boardroomAddress)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[ceil32(return_data.size) + 383 len 10]
                            if not ext_code.size(shareAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 425 len 64] = 0, address(boardroomAddress), ext_call.return_data[0 len 28]
                            call shareAddress with:
                               funct uint32(stor8)
                                 gas gas_remaining wei
                                args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0
                                if not approve(address rg1, uint256 rg2), Mask(224, 0, stor8):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                            else:
                                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 457]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
                    require ext_code.size(address(boardroomAddress))
                    call address(boardroomAddress).stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    else:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        69,
                        0x64436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f72206e6f72207075626c69632063616c6c206e6f7420616c6c6f7765,
                        mem[233 len 27]
        require ext_code.size(address(boardroomAddress))
        staticcall address(boardroomAddress).canClaimReward(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(address(boardroomAddress))
            staticcall address(boardroomAddress).earned(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                require ext_code.size(shareAddress)
                staticcall shareAddress.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if not ext_code.size(shareAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0
                    call shareAddress with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args 0, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0
                        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor8):
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if ext_call.return_data[0]:
                            require ext_code.size(shareAddress)
                            staticcall shareAddress.allowance(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(boardroomAddress)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[382 len 10]
                        if not ext_code.size(shareAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[424 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0 len 28]
                        mem[488 len 0] = 0
                        call shareAddress with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[488 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0
                            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor8):
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                        else:
                            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[456]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                        require ext_code.size(address(boardroomAddress))
                        call address(boardroomAddress).stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            if ext_call.return_data[0]:
                                require ext_code.size(shareAddress)
                                staticcall shareAddress.allowance(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args this.address, address(boardroomAddress)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[ceil32(return_data.size) + 383 len 10]
                            if not ext_code.size(shareAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0 len 28]
                            mem[ceil32(return_data.size) + 517 len 4] = 0
                            call shareAddress with:
                               funct uint32(stor8)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0
                                if not approve(address rg1, uint256 rg2), Mask(224, 0, stor8):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                                require ext_code.size(address(boardroomAddress))
                                call address(boardroomAddress).stake(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                            else:
                                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 457]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                require ext_code.size(address(boardroomAddress))
                                call address(boardroomAddress).stake(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        else:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                            if not ext_call.return_data[0]:
                                if not ext_code.size(shareAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0 len 28]
                                mem[ceil32(return_data.size) + 517 len 4] = 0
                                call shareAddress with:
                                   funct uint32(stor8)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0
                                    if not approve(address rg1, uint256 rg2), Mask(224, 0, stor8):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                    require ext_code.size(address(boardroomAddress))
                                    call address(boardroomAddress).stake(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                else:
                                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 457]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    require ext_code.size(address(boardroomAddress))
                                    call address(boardroomAddress).stake(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            else:
                                require ext_code.size(shareAddress)
                                staticcall shareAddress.allowance(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args this.address, address(boardroomAddress)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[ceil32(return_data.size) + 383 len 10]
                                if not ext_code.size(shareAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0 len 28]
                                mem[ceil32(return_data.size) + 489 len 0] = 0
                                call shareAddress with:
                                   funct uint32(stor8)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0
                                    if not approve(address rg1, uint256 rg2), Mask(224, 0, stor8):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 457]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
                                require ext_code.size(address(boardroomAddress))
                                call address(boardroomAddress).stake(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(address(boardroomAddress))
                call address(boardroomAddress).claimReward() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(shareAddress)
                staticcall shareAddress.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if not ext_code.size(shareAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0
                    mem[324 len 0] = 0
                    call shareAddress with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0
                        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor8):
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if ext_call.return_data[0]:
                            require ext_code.size(shareAddress)
                            staticcall shareAddress.allowance(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(boardroomAddress)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[382 len 10]
                        if not ext_code.size(shareAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[424 len 64] = 0, address(boardroomAddress), ext_call.return_data[0 len 28]
                        call shareAddress with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args ext_call.return_data[0], mem[360 len 28], mem[488 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0
                            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor8):
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                        else:
                            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[456]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            if not ext_call.return_data[0]:
                                if not ext_code.size(shareAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 425 len 64] = 0, address(boardroomAddress), ext_call.return_data[0 len 28]
                                call shareAddress with:
                                   funct uint32(stor8)
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0
                                    if not approve(address rg1, uint256 rg2), Mask(224, 0, stor8):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 457]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            else:
                                require ext_code.size(shareAddress)
                                staticcall shareAddress.allowance(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args this.address, address(boardroomAddress)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[ceil32(return_data.size) + 383 len 10]
                                if not ext_code.size(shareAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 425 len 64] = 0, address(boardroomAddress), ext_call.return_data[0 len 28]
                                call shareAddress with:
                                   funct uint32(stor8)
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0
                                    if not approve(address rg1, uint256 rg2), Mask(224, 0, stor8):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 457]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
                        else:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                            if ext_call.return_data[0]:
                                require ext_code.size(shareAddress)
                                staticcall shareAddress.allowance(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args this.address, address(boardroomAddress)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[ceil32(return_data.size) + 383 len 10]
                            if not ext_code.size(shareAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 425 len 64] = 0, address(boardroomAddress), ext_call.return_data[0 len 28]
                            call shareAddress with:
                               funct uint32(stor8)
                                 gas gas_remaining wei
                                args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0
                                if not approve(address rg1, uint256 rg2), Mask(224, 0, stor8):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                            else:
                                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 457]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
                    require ext_code.size(address(boardroomAddress))
                    call address(boardroomAddress).stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}
