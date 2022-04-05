contract main {




// =====================  Runtime code  =====================


#
#  - workForDaoFund()
#  - rebalance()
#
uint8 stor0; offset 160
uint8 stor0; offset 168
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
address pancakeRouterAddress;
array of struct uniswapPaths;
array of struct expansionPercent;
array of struct contractionPercent;
address strategistAddress;
address dollarOracleAddress;
address treasuryAddress;
mapping of struct maxAmountToTrade;

function initialized() {
    return bool(uint8(stor0.field_160))
}

function strategist() {
    return strategistAddress
}

function uniswapPaths(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 < uniswapPaths[arg1][arg2].field_0
    return uniswapPaths[arg1][arg2][arg3].field_0
}

function maxAmountToTrade(address arg1) {
    require calldata.size - 4 >= 32
    return maxAmountToTrade[arg1].field_0
}

function busd() {
    return busdAddress
}

function dollarOracle() {
    return dollarOracleAddress
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

function treasury() {
    return treasuryAddress
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

function pancakeRouter() {
    return pancakeRouterAddress
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
    return bool(uint8(stor0.field_168))
}

function dollarPriceToBuy() {
    return dollarPriceToBuy
}

function _fallback() payable {
    revert
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

function setTreasury(address arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x64436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    treasuryAddress = arg1
}

function setStrategist(address arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x64436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    strategistAddress = arg1
}

function setDollarOracle(address arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x64436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    dollarOracleAddress = arg1
}

function setPublicAllowed(bool arg1) {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x65436f6d6d756e69747946756e643a2063616c6c6572206973206e6f74206120737472617465676973,
                        mem[205 len 23]
    Mask(88, 0, stor0.field_168) = Mask(88, 0, arg1)
}

function setMaxAmountToTrade(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if strategistAddress != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x65436f6d6d756e69747946756e643a2063616c6c6572206973206e6f74206120737472617465676973,
                        mem[205 len 23]
    maxAmountToTrade[stor3].field_0 = arg1
    maxAmountToTrade[stor6].field_0 = arg2
    maxAmountToTrade[stor7].field_0 = arg3
}

function exitBoardroom() {
    if strategistAddress != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x65436f6d6d756e69747946756e643a2063616c6c6572206973206e6f74206120737472617465676973,
                        mem[205 len 23]
    require ext_code.size(address(boardroomAddress))
    call address(boardroomAddress).0xe9fad8ee with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getDollarUpdatedPrice() {
    require ext_code.size(dollarOracleAddress)
    staticcall dollarOracleAddress.twap(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args dollarAddress, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x7954726561737572793a206661696c656420746f20636f6e73756c7420646f6c6c61722070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    return ext_call.return_data[14 len 18]
}

function getDollarPrice() {
    require ext_code.size(dollarOracleAddress)
    staticcall dollarOracleAddress.consult(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args dollarAddress, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    61,
                    0x65436f6d6d756e69747946756e643a206661696c656420746f20636f6e73756c7420646f6c6c61722070726963652066726f6d20746865206f7261636c,
                    mem[225 len 3]
    require return_data.size >= 32
    return ext_call.return_data[14 len 18]
}

function setDollarPriceToBuy(uint256 arg1) {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x65436f6d6d756e69747946756e643a2063616c6c6572206973206e6f74206120737472617465676973,
                        mem[205 len 23]
    if arg1 < 5 * 10^17:
        revert with 0, '_dollarPriceToBuy: out of range'
    if arg1 > 105 * 10^16:
        revert with 0, '_dollarPriceToBuy: out of range'
    dollarPriceToBuy = arg1
}

function setDollarPriceToSell(uint256 arg1) {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x65436f6d6d756e69747946756e643a2063616c6c6572206973206e6f74206120737472617465676973,
                        mem[205 len 23]
    if arg1 < 95 * 10^16:
        revert with 0, '_dollarPriceToSell: out of range'
    if arg1 > 2 * 10^18:
        revert with 0, '_dollarPriceToSell: out of range'
    dollarPriceToSell = arg1
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
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdrawShare(uint256 arg1) {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x65436f6d6d756e69747946756e643a2063616c6c6572206973206e6f74206120737472617465676973,
                        mem[205 len 23]
    require ext_code.size(address(boardroomAddress))
    call address(boardroomAddress).0x2e1a7d4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setExpansionPercent(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if strategistAddress != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x65436f6d6d756e69747946756e643a2063616c6c6572206973206e6f74206120737472617465676973,
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
    if strategistAddress != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x65436f6d6d756e69747946756e643a2063616c6c6572206973206e6f74206120737472617465676973,
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
    if not uint8(stor0.field_168):
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

function buyBonds(uint256 arg1) {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x65436f6d6d756e69747946756e643a2063616c6c6572206973206e6f74206120737472617465676973,
                        mem[205 len 23]
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0xe1f095aa with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(treasuryAddress)
    call treasuryAddress.buyBonds(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args arg1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit BoughtBonds(arg1);
}

function redeemBonds(uint256 arg1) {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x65436f6d6d756e69747946756e643a2063616c6c6572206973206e6f74206120737472617465676973,
                        mem[205 len 23]
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0xe1f095aa with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(treasuryAddress)
    call treasuryAddress.redeemBonds(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args arg1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit RedeemedBonds(arg1);
}

function tokenBalances() {
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(busdAddress)
    staticcall busdAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wbnbAddress)
    staticcall wbnbAddress.0x70a08231 with:
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
    if strategistAddress != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0, 
                        32,
                        41,
                        0x65436f6d6d756e69747946756e643a2063616c6c6572206973206e6f74206120737472617465676973,
                        mem[(32 * arg3.length) + 237 len 23]
    uniswapPaths[address(arg1)][address(arg2)].field_0 = arg3.length
    if not arg3.length:
        idx = 0
        while uniswapPaths[address(arg1)][address(arg2)].field_0 > idx:
            uniswapPaths[address(arg1)][address(arg2)][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg3.length) + 128 > idx:
            uniswapPaths[address(arg1)][address(arg2)][s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        while uniswapPaths[address(arg1)][address(arg2)].field_0 > idx:
            uniswapPaths[address(arg1)][address(arg2)][idx].field_0 = 0
            idx = idx + 1
            continue 
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7) {
    require calldata.size - 4 >= 224
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6c436f6d6d756e69747946756e643a20616c726561647920696e697469616c697a65,
                    mem[198 len 30]
    dollarAddress = arg1
    bondAddress = arg2
    shareAddress = arg3
    busdAddress = arg4
    wbnbAddress = arg5
    address(boardroomAddress) = arg6
    pancakeRouterAddress = arg7
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
    staticcall dollarAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(busdAddress)
    staticcall busdAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wbnbAddress)
    staticcall wbnbAddress.0x70a08231 with:
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
            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 3 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return 0 / 3 * ext_call.return_data[0], 
                   0 / 3 * ext_call.return_data[0],
                   10000 * ext_call.return_data[0] / 3 * ext_call.return_data[0]
        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not 3 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            if not 3 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return 0 / 3 * ext_call.return_data[0], 
                   10000 * ext_call.return_data[0] / 3 * ext_call.return_data[0],
                   0 / 3 * ext_call.return_data[0]
        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not 3 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return 0 / 3 * ext_call.return_data[0], 
               10000 * ext_call.return_data[0] / 3 * ext_call.return_data[0],
               10000 * ext_call.return_data[0] / 3 * ext_call.return_data[0]
    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
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
            return 10000 * ext_call.return_data[0] / 3 * ext_call.return_data[0], 
                   0 / 3 * ext_call.return_data[0],
                   0 / 3 * ext_call.return_data[0]
        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not 3 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return 10000 * ext_call.return_data[0] / 3 * ext_call.return_data[0], 
               0 / 3 * ext_call.return_data[0],
               10000 * ext_call.return_data[0] / 3 * ext_call.return_data[0]
    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not 3 * ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[0]:
        if not 3 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return 10000 * ext_call.return_data[0] / 3 * ext_call.return_data[0], 
               10000 * ext_call.return_data[0] / 3 * ext_call.return_data[0],
               0 / 3 * ext_call.return_data[0]
    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not 3 * ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return 10000 * ext_call.return_data[0] / 3 * ext_call.return_data[0], 
           10000 * ext_call.return_data[0] / 3 * ext_call.return_data[0],
           10000 * ext_call.return_data[0] / 3 * ext_call.return_data[0]
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
    if arg3.length != 0:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = Mask(32, 224, sha3(arg3[all]))
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 196 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 196] = mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) + 256, mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 196])
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg4.length + 4
        mem[64] = arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 196
        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 196 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])]
        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 228 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + 224 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32]
        call arg1.mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 196 len 4] with:
           value arg2 wei
             gas gas_remaining wei
            args mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 200 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] - 4]
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
}

function forceSell(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if strategistAddress != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x65436f6d6d756e69747946756e643a2063616c6c6572206973206e6f74206120737472617465676973,
                        mem[205 len 23]
    mem[100] = dollarAddress
    mem[132] = 10^18
    require ext_code.size(dollarOracleAddress)
    staticcall dollarOracleAddress.consult(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args dollarAddress, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    61,
                    0x65436f6d6d756e69747946756e643a206661696c656420746f20636f6e73756c7420646f6c6c61722070726963652066726f6d20746865206f7261636c,
                    mem[225 len 3]
    require return_data.size >= 32
    if ext_call.return_data[14 len 18] < dollarPriceToBuy:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0xfe436f6d6d756e69747946756e643a20707269636520697320746f6f206c6f7720746f2073656c,
                    mem[203 len 25]
    if arg2:
        mem[0] = arg1
        mem[32] = sha3(dollarAddress, 10)
        mem[96] = uniswapPaths[stor3][address(arg1)].field_0
        if not maxAmountToTrade[stor3].field_0:
            if not uniswapPaths[stor3][address(arg1)].field_0:
                if uniswapPaths[stor3][address(arg1)].field_0 != 0:
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 132] = arg2
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 164] = 1
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 228] = this.address
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 260] = block.timestamp + 1800
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 196] = 160
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 292] = uniswapPaths[stor3][address(arg1)].field_0
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 324 len floor32(uniswapPaths[stor3][address(arg1)].field_0)] = mem[128 len floor32(uniswapPaths[stor3][address(arg1)].field_0)]
                    require ext_code.size(pancakeRouterAddress)
                    call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg2, 1, Array(len=uniswapPaths[stor3][address(arg1)].field_0, data=mem[128 len floor32(uniswapPaths[stor3][address(arg1)].field_0)], mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + floor32(uniswapPaths[stor3][address(arg1)].field_0) + 324 len (32 * uniswapPaths[stor3][address(arg1)].field_0) - floor32(uniswapPaths[stor3][address(arg1)].field_0)]), address(this.address), block.timestamp + 1800
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * uniswapPaths[stor3][address(arg1)].field_0) + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128] <= 4294967296 and mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 32 <= return_data.size
                else:
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 192] = arg1
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 228] = arg2
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 260] = 1
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 324] = this.address
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 356] = block.timestamp + 1800
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 292] = 160
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 388] = 2
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 420 len 0] = None
                    require ext_code.size(pancakeRouterAddress)
                    call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg2, 1, Array(len=2, data=mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 420 len 64]), address(this.address), block.timestamp + 1800
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * uniswapPaths[stor3][address(arg1)].field_0) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
            else:
                mem[0] = sha3(address(arg1), sha3(dollarAddress, 10))
                mem[128] = uniswapPaths[stor3][address(arg1)].field_0
                idx = 128
                s = 0
                while (32 * uniswapPaths[stor3][address(arg1)].field_0) + 96 > idx:
                    mem[idx + 32] = uniswapPaths[stor3][address(arg1)][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if uniswapPaths[stor3][address(arg1)].field_0 != 0:
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 132] = arg2
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 164] = 1
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 228] = this.address
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 260] = block.timestamp + 1800
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 196] = 160
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 292] = uniswapPaths[stor3][address(arg1)].field_0
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 324 len floor32(uniswapPaths[stor3][address(arg1)].field_0)] = mem[128 len floor32(uniswapPaths[stor3][address(arg1)].field_0)]
                    require ext_code.size(pancakeRouterAddress)
                    call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg2, 1, Array(len=uniswapPaths[stor3][address(arg1)].field_0, data=mem[128 len floor32(uniswapPaths[stor3][address(arg1)].field_0)], mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + floor32(uniswapPaths[stor3][address(arg1)].field_0) + 324 len (32 * uniswapPaths[stor3][address(arg1)].field_0) - floor32(uniswapPaths[stor3][address(arg1)].field_0)]), address(this.address), block.timestamp + 1800
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * uniswapPaths[stor3][address(arg1)].field_0) + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128] <= 4294967296 and mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 32 <= return_data.size
                else:
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128] = 2
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 160] = dollarAddress
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 192] = arg1
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 228] = arg2
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 260] = 1
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 324] = this.address
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 356] = block.timestamp + 1800
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 292] = 160
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 388] = 2
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 420 len 0] = None
                    require ext_code.size(pancakeRouterAddress)
                    call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg2, 1, Array(len=2, data=mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 420 len 64]), address(this.address), block.timestamp + 1800
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * uniswapPaths[stor3][address(arg1)].field_0) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
        else:
            if maxAmountToTrade[stor3].field_0 >= arg2:
                if not uniswapPaths[stor3][address(arg1)].field_0:
                    if uniswapPaths[stor3][address(arg1)].field_0 != 0:
                        if block.timestamp + 1800 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 132] = arg2
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 164] = 1
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 228] = this.address
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 260] = block.timestamp + 1800
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 196] = 160
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 292] = uniswapPaths[stor3][address(arg1)].field_0
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 324 len floor32(uniswapPaths[stor3][address(arg1)].field_0)] = mem[128 len floor32(uniswapPaths[stor3][address(arg1)].field_0)]
                        require ext_code.size(pancakeRouterAddress)
                        call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args arg2, 1, Array(len=uniswapPaths[stor3][address(arg1)].field_0, data=mem[128 len floor32(uniswapPaths[stor3][address(arg1)].field_0)], mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + floor32(uniswapPaths[stor3][address(arg1)].field_0) + 324 len (32 * uniswapPaths[stor3][address(arg1)].field_0) - floor32(uniswapPaths[stor3][address(arg1)].field_0)]), address(this.address), block.timestamp + 1800
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * uniswapPaths[stor3][address(arg1)].field_0) + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128] <= 4294967296 and mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 32 <= return_data.size
                    else:
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 192] = arg1
                        if block.timestamp + 1800 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 228] = arg2
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 260] = 1
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 324] = this.address
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 356] = block.timestamp + 1800
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 292] = 160
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 388] = 2
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 420 len 0] = None
                        require ext_code.size(pancakeRouterAddress)
                        call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args arg2, 1, Array(len=2, data=mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 420 len 64]), address(this.address), block.timestamp + 1800
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * uniswapPaths[stor3][address(arg1)].field_0) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                else:
                    mem[0] = sha3(address(arg1), sha3(dollarAddress, 10))
                    mem[128] = uniswapPaths[stor3][address(arg1)].field_0
                    idx = 128
                    s = 0
                    while (32 * uniswapPaths[stor3][address(arg1)].field_0) + 96 > idx:
                        mem[idx + 32] = uniswapPaths[stor3][address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if uniswapPaths[stor3][address(arg1)].field_0 != 0:
                        if block.timestamp + 1800 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 132] = arg2
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 164] = 1
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 228] = this.address
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 260] = block.timestamp + 1800
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 196] = 160
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 292] = uniswapPaths[stor3][address(arg1)].field_0
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 324 len floor32(uniswapPaths[stor3][address(arg1)].field_0)] = mem[128 len floor32(uniswapPaths[stor3][address(arg1)].field_0)]
                        require ext_code.size(pancakeRouterAddress)
                        call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args arg2, 1, Array(len=uniswapPaths[stor3][address(arg1)].field_0, data=mem[128 len floor32(uniswapPaths[stor3][address(arg1)].field_0)], mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + floor32(uniswapPaths[stor3][address(arg1)].field_0) + 324 len (32 * uniswapPaths[stor3][address(arg1)].field_0) - floor32(uniswapPaths[stor3][address(arg1)].field_0)]), address(this.address), block.timestamp + 1800
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * uniswapPaths[stor3][address(arg1)].field_0) + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128] <= 4294967296 and mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 32 <= return_data.size
                    else:
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128] = 2
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 160] = dollarAddress
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 192] = arg1
                        if block.timestamp + 1800 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 228] = arg2
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 260] = 1
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 324] = this.address
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 356] = block.timestamp + 1800
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 292] = 160
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 388] = 2
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 420 len 0] = None
                        require ext_code.size(pancakeRouterAddress)
                        call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args arg2, 1, Array(len=2, data=mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 420 len 64]), address(this.address), block.timestamp + 1800
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * uniswapPaths[stor3][address(arg1)].field_0) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
            else:
                if not uniswapPaths[stor3][address(arg1)].field_0:
                    if uniswapPaths[stor3][address(arg1)].field_0 != 0:
                        if block.timestamp + 1800 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 132] = maxAmountToTrade[stor3].field_0
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 164] = 1
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 228] = this.address
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 260] = block.timestamp + 1800
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 196] = 160
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 292] = uniswapPaths[stor3][address(arg1)].field_0
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 324 len floor32(uniswapPaths[stor3][address(arg1)].field_0)] = mem[128 len floor32(uniswapPaths[stor3][address(arg1)].field_0)]
                        require ext_code.size(pancakeRouterAddress)
                        call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args maxAmountToTrade[stor3].field_0, 1, Array(len=uniswapPaths[stor3][address(arg1)].field_0, data=mem[128 len floor32(uniswapPaths[stor3][address(arg1)].field_0)], mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + floor32(uniswapPaths[stor3][address(arg1)].field_0) + 324 len (32 * uniswapPaths[stor3][address(arg1)].field_0) - floor32(uniswapPaths[stor3][address(arg1)].field_0)]), address(this.address), block.timestamp + 1800
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * uniswapPaths[stor3][address(arg1)].field_0) + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len 4], maxAmountToTrade[stor3].field_32 <= 4294967296
                        require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len 4], maxAmountToTrade[stor3].field_32 + 32 <= return_data.size
                        require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len 4], maxAmountToTrade[stor3].field_32 + 128] <= 4294967296 and mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len 4], maxAmountToTrade[stor3].field_32 + (32 * mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len 4], maxAmountToTrade[stor3].field_32 + 128]) + 32 <= return_data.size
                    else:
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 192] = arg1
                        if block.timestamp + 1800 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 228] = maxAmountToTrade[stor3].field_0
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 260] = 1
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 324] = this.address
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 356] = block.timestamp + 1800
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 292] = 160
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 388] = 2
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 420 len 0] = None
                        require ext_code.size(pancakeRouterAddress)
                        call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args maxAmountToTrade[stor3].field_0, 1, Array(len=2, data=mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 420 len 64]), address(this.address), block.timestamp + 1800
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * uniswapPaths[stor3][address(arg1)].field_0) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len 4], maxAmountToTrade[stor3].field_32 <= 4294967296
                        require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len 4], maxAmountToTrade[stor3].field_32 + 32 <= return_data.size
                        require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len 4], maxAmountToTrade[stor3].field_32 + 224] <= 4294967296 and mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len 4], maxAmountToTrade[stor3].field_32 + (32 * mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len 4], maxAmountToTrade[stor3].field_32 + 224]) + 32 <= return_data.size
                else:
                    mem[0] = sha3(address(arg1), sha3(dollarAddress, 10))
                    mem[128] = uniswapPaths[stor3][address(arg1)].field_0
                    idx = 128
                    s = 0
                    while (32 * uniswapPaths[stor3][address(arg1)].field_0) + 96 > idx:
                        mem[idx + 32] = uniswapPaths[stor3][address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if uniswapPaths[stor3][address(arg1)].field_0 != 0:
                        if block.timestamp + 1800 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 132] = maxAmountToTrade[stor3].field_0
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 164] = 1
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 228] = this.address
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 260] = block.timestamp + 1800
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 196] = 160
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 292] = uniswapPaths[stor3][address(arg1)].field_0
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 324 len floor32(uniswapPaths[stor3][address(arg1)].field_0)] = mem[128 len floor32(uniswapPaths[stor3][address(arg1)].field_0)]
                        require ext_code.size(pancakeRouterAddress)
                        call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args maxAmountToTrade[stor3].field_0, 1, Array(len=uniswapPaths[stor3][address(arg1)].field_0, data=mem[128 len floor32(uniswapPaths[stor3][address(arg1)].field_0)], mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + floor32(uniswapPaths[stor3][address(arg1)].field_0) + 324 len (32 * uniswapPaths[stor3][address(arg1)].field_0) - floor32(uniswapPaths[stor3][address(arg1)].field_0)]), address(this.address), block.timestamp + 1800
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * uniswapPaths[stor3][address(arg1)].field_0) + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len 4], maxAmountToTrade[stor3].field_32 <= 4294967296
                        require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len 4], maxAmountToTrade[stor3].field_32 + 32 <= return_data.size
                        require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len 4], maxAmountToTrade[stor3].field_32 + 128] <= 4294967296 and mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len 4], maxAmountToTrade[stor3].field_32 + (32 * mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128 len 4], maxAmountToTrade[stor3].field_32 + 128]) + 32 <= return_data.size
                    else:
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 128] = 2
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 160] = dollarAddress
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 192] = arg1
                        if block.timestamp + 1800 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 228] = maxAmountToTrade[stor3].field_0
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 260] = 1
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 324] = this.address
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 356] = block.timestamp + 1800
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 292] = 160
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 388] = 2
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 420 len 0] = None
                        require ext_code.size(pancakeRouterAddress)
                        call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args maxAmountToTrade[stor3].field_0, 1, Array(len=2, data=mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 420 len 64]), address(this.address), block.timestamp + 1800
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * uniswapPaths[stor3][address(arg1)].field_0) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len 4], maxAmountToTrade[stor3].field_32 <= 4294967296
                        require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len 4], maxAmountToTrade[stor3].field_32 + 32 <= return_data.size
                        require mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len 4], maxAmountToTrade[stor3].field_32 + 224] <= 4294967296 and mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len 4], maxAmountToTrade[stor3].field_32 + (32 * mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + mem[(32 * uniswapPaths[stor3][address(arg1)].field_0) + 224 len 4], maxAmountToTrade[stor3].field_32 + 224]) + 32 <= return_data.size
}

function forceBuy(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if strategistAddress != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x65436f6d6d756e69747946756e643a2063616c6c6572206973206e6f74206120737472617465676973,
                        mem[205 len 23]
    mem[100] = dollarAddress
    mem[132] = 10^18
    require ext_code.size(dollarOracleAddress)
    staticcall dollarOracleAddress.consult(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args dollarAddress, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    61,
                    0x65436f6d6d756e69747946756e643a206661696c656420746f20636f6e73756c7420646f6c6c61722070726963652066726f6d20746865206f7261636c,
                    mem[225 len 3]
    require return_data.size >= 32
    if ext_call.return_data[14 len 18] > dollarPriceToSell:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x77436f6d6d756e69747946756e643a20707269636520697320746f6f206869676820746f206275,
                    mem[203 len 25]
    if arg2:
        mem[32] = sha3(address(arg1), 10)
        mem[96] = uniswapPaths[address(arg1)][stor3].field_0
        if not maxAmountToTrade[address(arg1)].field_0:
            if not uniswapPaths[address(arg1)][stor3].field_0:
                if uniswapPaths[address(arg1)][stor3].field_0 != 0:
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 132] = arg2
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 164] = 1
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 228] = this.address
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 260] = block.timestamp + 1800
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 196] = 160
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 292] = uniswapPaths[address(arg1)][stor3].field_0
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 324 len floor32(uniswapPaths[address(arg1)][stor3].field_0)] = mem[128 len floor32(uniswapPaths[address(arg1)][stor3].field_0)]
                    require ext_code.size(pancakeRouterAddress)
                    call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg2, 1, Array(len=uniswapPaths[address(arg1)][stor3].field_0, data=mem[128 len floor32(uniswapPaths[address(arg1)][stor3].field_0)], mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + floor32(uniswapPaths[address(arg1)][stor3].field_0) + 324 len (32 * uniswapPaths[address(arg1)][stor3].field_0) - floor32(uniswapPaths[address(arg1)][stor3].field_0)]), address(this.address), block.timestamp + 1800
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * uniswapPaths[address(arg1)][stor3].field_0) + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128] <= 4294967296 and mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 32 <= return_data.size
                else:
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 192] = dollarAddress
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 228] = arg2
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 260] = 1
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 324] = this.address
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 356] = block.timestamp + 1800
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 292] = 160
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 388] = 2
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 420 len 0] = None
                    require ext_code.size(pancakeRouterAddress)
                    call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg2, 1, Array(len=2, data=mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 420 len 64]), address(this.address), block.timestamp + 1800
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * uniswapPaths[address(arg1)][stor3].field_0) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
            else:
                mem[0] = sha3(dollarAddress, sha3(address(arg1), 10))
                mem[128] = uniswapPaths[address(arg1)][stor3].field_0
                idx = 128
                s = 0
                while (32 * uniswapPaths[address(arg1)][stor3].field_0) + 96 > idx:
                    mem[idx + 32] = uniswapPaths[address(arg1)][stor3][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if uniswapPaths[address(arg1)][stor3].field_0 != 0:
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 132] = arg2
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 164] = 1
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 228] = this.address
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 260] = block.timestamp + 1800
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 196] = 160
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 292] = uniswapPaths[address(arg1)][stor3].field_0
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 324 len floor32(uniswapPaths[address(arg1)][stor3].field_0)] = mem[128 len floor32(uniswapPaths[address(arg1)][stor3].field_0)]
                    require ext_code.size(pancakeRouterAddress)
                    call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg2, 1, Array(len=uniswapPaths[address(arg1)][stor3].field_0, data=mem[128 len floor32(uniswapPaths[address(arg1)][stor3].field_0)], mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + floor32(uniswapPaths[address(arg1)][stor3].field_0) + 324 len (32 * uniswapPaths[address(arg1)][stor3].field_0) - floor32(uniswapPaths[address(arg1)][stor3].field_0)]), address(this.address), block.timestamp + 1800
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * uniswapPaths[address(arg1)][stor3].field_0) + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128] <= 4294967296 and mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 32 <= return_data.size
                else:
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128] = 2
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 160] = arg1
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 192] = dollarAddress
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 228] = arg2
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 260] = 1
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 324] = this.address
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 356] = block.timestamp + 1800
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 292] = 160
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 388] = 2
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 420 len 0] = None
                    require ext_code.size(pancakeRouterAddress)
                    call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg2, 1, Array(len=2, data=mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 420 len 64]), address(this.address), block.timestamp + 1800
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * uniswapPaths[address(arg1)][stor3].field_0) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
        else:
            if maxAmountToTrade[address(arg1)].field_0 >= arg2:
                if not uniswapPaths[address(arg1)][stor3].field_0:
                    if uniswapPaths[address(arg1)][stor3].field_0 != 0:
                        if block.timestamp + 1800 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 132] = arg2
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 164] = 1
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 228] = this.address
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 260] = block.timestamp + 1800
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 196] = 160
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 292] = uniswapPaths[address(arg1)][stor3].field_0
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 324 len floor32(uniswapPaths[address(arg1)][stor3].field_0)] = mem[128 len floor32(uniswapPaths[address(arg1)][stor3].field_0)]
                        require ext_code.size(pancakeRouterAddress)
                        call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args arg2, 1, Array(len=uniswapPaths[address(arg1)][stor3].field_0, data=mem[128 len floor32(uniswapPaths[address(arg1)][stor3].field_0)], mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + floor32(uniswapPaths[address(arg1)][stor3].field_0) + 324 len (32 * uniswapPaths[address(arg1)][stor3].field_0) - floor32(uniswapPaths[address(arg1)][stor3].field_0)]), address(this.address), block.timestamp + 1800
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * uniswapPaths[address(arg1)][stor3].field_0) + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128] <= 4294967296 and mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 32 <= return_data.size
                    else:
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 192] = dollarAddress
                        if block.timestamp + 1800 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 228] = arg2
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 260] = 1
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 324] = this.address
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 356] = block.timestamp + 1800
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 292] = 160
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 388] = 2
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 420 len 0] = None
                        require ext_code.size(pancakeRouterAddress)
                        call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args arg2, 1, Array(len=2, data=mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 420 len 64]), address(this.address), block.timestamp + 1800
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * uniswapPaths[address(arg1)][stor3].field_0) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                else:
                    mem[0] = sha3(dollarAddress, sha3(address(arg1), 10))
                    mem[128] = uniswapPaths[address(arg1)][stor3].field_0
                    idx = 128
                    s = 0
                    while (32 * uniswapPaths[address(arg1)][stor3].field_0) + 96 > idx:
                        mem[idx + 32] = uniswapPaths[address(arg1)][stor3][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if uniswapPaths[address(arg1)][stor3].field_0 != 0:
                        if block.timestamp + 1800 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 132] = arg2
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 164] = 1
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 228] = this.address
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 260] = block.timestamp + 1800
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 196] = 160
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 292] = uniswapPaths[address(arg1)][stor3].field_0
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 324 len floor32(uniswapPaths[address(arg1)][stor3].field_0)] = mem[128 len floor32(uniswapPaths[address(arg1)][stor3].field_0)]
                        require ext_code.size(pancakeRouterAddress)
                        call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args arg2, 1, Array(len=uniswapPaths[address(arg1)][stor3].field_0, data=mem[128 len floor32(uniswapPaths[address(arg1)][stor3].field_0)], mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + floor32(uniswapPaths[address(arg1)][stor3].field_0) + 324 len (32 * uniswapPaths[address(arg1)][stor3].field_0) - floor32(uniswapPaths[address(arg1)][stor3].field_0)]), address(this.address), block.timestamp + 1800
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * uniswapPaths[address(arg1)][stor3].field_0) + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128] <= 4294967296 and mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 32 <= return_data.size
                    else:
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128] = 2
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 160] = arg1
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 192] = dollarAddress
                        if block.timestamp + 1800 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 228] = arg2
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 260] = 1
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 324] = this.address
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 356] = block.timestamp + 1800
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 292] = 160
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 388] = 2
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 420 len 0] = None
                        require ext_code.size(pancakeRouterAddress)
                        call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args arg2, 1, Array(len=2, data=mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 420 len 64]), address(this.address), block.timestamp + 1800
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * uniswapPaths[address(arg1)][stor3].field_0) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
            else:
                if not uniswapPaths[address(arg1)][stor3].field_0:
                    if uniswapPaths[address(arg1)][stor3].field_0 != 0:
                        if block.timestamp + 1800 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 132] = maxAmountToTrade[address(arg1)].field_0
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 164] = 1
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 228] = this.address
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 260] = block.timestamp + 1800
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 196] = 160
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 292] = uniswapPaths[address(arg1)][stor3].field_0
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 324 len floor32(uniswapPaths[address(arg1)][stor3].field_0)] = mem[128 len floor32(uniswapPaths[address(arg1)][stor3].field_0)]
                        require ext_code.size(pancakeRouterAddress)
                        call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args maxAmountToTrade[address(arg1)].field_0, 1, Array(len=uniswapPaths[address(arg1)][stor3].field_0, data=mem[128 len floor32(uniswapPaths[address(arg1)][stor3].field_0)], mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + floor32(uniswapPaths[address(arg1)][stor3].field_0) + 324 len (32 * uniswapPaths[address(arg1)][stor3].field_0) - floor32(uniswapPaths[address(arg1)][stor3].field_0)]), address(this.address), block.timestamp + 1800
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * uniswapPaths[address(arg1)][stor3].field_0) + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len 4], maxAmountToTrade[address(arg1)].field_32 <= 4294967296
                        require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len 4], maxAmountToTrade[address(arg1)].field_32 + 32 <= return_data.size
                        require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len 4], maxAmountToTrade[address(arg1)].field_32 + 128] <= 4294967296 and mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len 4], maxAmountToTrade[address(arg1)].field_32 + (32 * mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len 4], maxAmountToTrade[address(arg1)].field_32 + 128]) + 32 <= return_data.size
                    else:
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 192] = dollarAddress
                        if block.timestamp + 1800 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 228] = maxAmountToTrade[address(arg1)].field_0
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 260] = 1
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 324] = this.address
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 356] = block.timestamp + 1800
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 292] = 160
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 388] = 2
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 420 len 0] = None
                        require ext_code.size(pancakeRouterAddress)
                        call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args maxAmountToTrade[address(arg1)].field_0, 1, Array(len=2, data=mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 420 len 64]), address(this.address), block.timestamp + 1800
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * uniswapPaths[address(arg1)][stor3].field_0) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len 4], maxAmountToTrade[address(arg1)].field_32 <= 4294967296
                        require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len 4], maxAmountToTrade[address(arg1)].field_32 + 32 <= return_data.size
                        require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len 4], maxAmountToTrade[address(arg1)].field_32 + 224] <= 4294967296 and mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len 4], maxAmountToTrade[address(arg1)].field_32 + (32 * mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len 4], maxAmountToTrade[address(arg1)].field_32 + 224]) + 32 <= return_data.size
                else:
                    mem[0] = sha3(dollarAddress, sha3(address(arg1), 10))
                    mem[128] = uniswapPaths[address(arg1)][stor3].field_0
                    idx = 128
                    s = 0
                    while (32 * uniswapPaths[address(arg1)][stor3].field_0) + 96 > idx:
                        mem[idx + 32] = uniswapPaths[address(arg1)][stor3][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if uniswapPaths[address(arg1)][stor3].field_0 != 0:
                        if block.timestamp + 1800 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 132] = maxAmountToTrade[address(arg1)].field_0
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 164] = 1
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 228] = this.address
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 260] = block.timestamp + 1800
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 196] = 160
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 292] = uniswapPaths[address(arg1)][stor3].field_0
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 324 len floor32(uniswapPaths[address(arg1)][stor3].field_0)] = mem[128 len floor32(uniswapPaths[address(arg1)][stor3].field_0)]
                        require ext_code.size(pancakeRouterAddress)
                        call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args maxAmountToTrade[address(arg1)].field_0, 1, Array(len=uniswapPaths[address(arg1)][stor3].field_0, data=mem[128 len floor32(uniswapPaths[address(arg1)][stor3].field_0)], mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + floor32(uniswapPaths[address(arg1)][stor3].field_0) + 324 len (32 * uniswapPaths[address(arg1)][stor3].field_0) - floor32(uniswapPaths[address(arg1)][stor3].field_0)]), address(this.address), block.timestamp + 1800
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * uniswapPaths[address(arg1)][stor3].field_0) + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len 4], maxAmountToTrade[address(arg1)].field_32 <= 4294967296
                        require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len 4], maxAmountToTrade[address(arg1)].field_32 + 32 <= return_data.size
                        require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len 4], maxAmountToTrade[address(arg1)].field_32 + 128] <= 4294967296 and mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len 4], maxAmountToTrade[address(arg1)].field_32 + (32 * mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128 len 4], maxAmountToTrade[address(arg1)].field_32 + 128]) + 32 <= return_data.size
                    else:
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 128] = 2
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 160] = arg1
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 192] = dollarAddress
                        if block.timestamp + 1800 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 228] = maxAmountToTrade[address(arg1)].field_0
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 260] = 1
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 324] = this.address
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 356] = block.timestamp + 1800
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 292] = 160
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 388] = 2
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 420 len 0] = None
                        require ext_code.size(pancakeRouterAddress)
                        call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args maxAmountToTrade[address(arg1)].field_0, 1, Array(len=2, data=mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 420 len 64]), address(this.address), block.timestamp + 1800
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * uniswapPaths[address(arg1)][stor3].field_0) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len 4], maxAmountToTrade[address(arg1)].field_32 <= 4294967296
                        require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len 4], maxAmountToTrade[address(arg1)].field_32 + 32 <= return_data.size
                        require mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len 4], maxAmountToTrade[address(arg1)].field_32 + 224] <= 4294967296 and mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len 4], maxAmountToTrade[address(arg1)].field_32 + (32 * mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + mem[(32 * uniswapPaths[address(arg1)][stor3].field_0) + 224 len 4], maxAmountToTrade[address(arg1)].field_32 + 224]) + 32 <= return_data.size
}

function claimAndRestake() {
    if uint8(stor0.field_168):
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
                staticcall shareAddress.0x70a08231 with:
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
                            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if ext_call.return_data[0]:
                            require ext_code.size(shareAddress)
                            staticcall shareAddress.0xdd62ed3e with:
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
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        else:
                            require ext_code.size(shareAddress)
                            staticcall shareAddress.0xdd62ed3e with:
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
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
                    require ext_code.size(address(boardroomAddress))
                    call address(boardroomAddress).0xa694fc3a with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(address(boardroomAddress))
                call address(boardroomAddress).0xb88a802f with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(shareAddress)
                staticcall shareAddress.0x70a08231 with:
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
                            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if ext_call.return_data[0]:
                            require ext_code.size(shareAddress)
                            staticcall shareAddress.0xdd62ed3e with:
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
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
                            else:
                                require ext_code.size(shareAddress)
                                staticcall shareAddress.0xdd62ed3e with:
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
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        else:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                            if ext_call.return_data[0]:
                                require ext_code.size(shareAddress)
                                staticcall shareAddress.0xdd62ed3e with:
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
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
                    require ext_code.size(address(boardroomAddress))
                    call address(boardroomAddress).0xa694fc3a with:
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
                staticcall shareAddress.0x70a08231 with:
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
                            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if ext_call.return_data[0]:
                            require ext_code.size(shareAddress)
                            staticcall shareAddress.0xdd62ed3e with:
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
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                        require ext_code.size(address(boardroomAddress))
                        call address(boardroomAddress).0xa694fc3a with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
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
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        if ext_call.return_data[0]:
                            require ext_code.size(shareAddress)
                            staticcall shareAddress.0xdd62ed3e with:
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
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
                            require ext_code.size(address(boardroomAddress))
                            call address(boardroomAddress).0xa694fc3a with:
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
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            require ext_code.size(address(boardroomAddress))
                            call address(boardroomAddress).0xa694fc3a with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(address(boardroomAddress))
                call address(boardroomAddress).0xb88a802f with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(shareAddress)
                staticcall shareAddress.0x70a08231 with:
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
                            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if ext_call.return_data[0]:
                            require ext_code.size(shareAddress)
                            staticcall shareAddress.0xdd62ed3e with:
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
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                        require ext_code.size(address(boardroomAddress))
                        call address(boardroomAddress).0xa694fc3a with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
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
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        if not ext_call.return_data[0]:
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
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
                            require ext_code.size(address(boardroomAddress))
                            call address(boardroomAddress).0xa694fc3a with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                        else:
                            require ext_code.size(shareAddress)
                            staticcall shareAddress.0xdd62ed3e with:
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
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                                require ext_code.size(address(boardroomAddress))
                                call address(boardroomAddress).0xa694fc3a with:
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
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                require ext_code.size(address(boardroomAddress))
                                call address(boardroomAddress).0xa694fc3a with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}
