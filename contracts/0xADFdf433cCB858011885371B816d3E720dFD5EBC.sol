contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - earn()
#
const sub_0c8f3c06(?) = 100 * 10^18

const vTokenAddress = 0xa07c5b74c9b40447a954e1466938b865b6bbea36

const venusAddress = 0xcf6bb5389c92bdda8a3747ddb454cb7a64626c63

const wbnbAddress = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c

const wantLockedInHere = (eth.balance(this.address) + ext_call.return_data[0])

const wantAddress = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c

const BORROW_RATE_MAX = 599

const BORROW_DEPTH_MAX = 10

const MIN_LEVERAGE_AMOUNT = 10^12


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
array of address venusMarkets;
address venusDistributionAddress;
uint32 stor5;
address pancakeSwapRouterAddress;
uint256 stor5;
address govAddress;
uint256 sharesTotal;
uint256 lastEarnBlock;
uint256 controllerFee;
uint256 controllerFeeMax;
uint256 controllerFeeUL;
uint256 buyBackRate;
uint256 buyBackRateMax;
uint256 buyBackRateUL;
address buyBackAddress;
uint256 entranceFeeFactor;
uint256 entranceFeeFactorMax;
uint256 entranceFeeFactorLL;
array of address venusToWantPath;
array of address sub_d191c086;
uint256 borrowRate;
uint256 borrowDepth;
uint8 stor23;
uint256 supplyBal;
uint256 borrowBal;

function controllerFeeUL() {
    return controllerFeeUL
}

function lastEarnBlock() {
    return lastEarnBlock
}

function entranceFeeFactor() {
    return entranceFeeFactor
}

function buyBackRate() {
    return buyBackRate
}

function controllerFeeMax() {
    return controllerFeeMax
}

function venusDistributionAddress() {
    return venusDistributionAddress
}

function sharesTotal() {
    return sharesTotal
}

function govAddress() {
    return govAddress
}

function buyBackRateMax() {
    return buyBackRateMax
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function venusMarkets(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < venusMarkets.length
    return venusMarkets[arg1]
}

function buyBackAddress() {
    return buyBackAddress
}

function controllerFee() {
    return controllerFee
}

function pancakeSwapRouterAddress() {
    return address(pancakeSwapRouterAddress)
}

function owner() {
    return owner
}

function borrowDepth() {
    return borrowDepth
}

function borrowBal() {
    return borrowBal
}

function buyBackRateUL() {
    return buyBackRateUL
}

function entranceFeeFactorLL() {
    return entranceFeeFactorLL
}

function borrowRate() {
    return borrowRate
}

function venusToWantPath(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < venusToWantPath.length
    return venusToWantPath[arg1]
}

function sub_d191c086(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_d191c086.length
    return sub_d191c086[arg1]
}

function entranceFeeFactorMax() {
    return entranceFeeFactorMax
}

function supplyBal() {
    return supplyBal
}

function _fallback() payable {
    revert
}

function setGov(address arg1) {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    govAddress = arg1
}

function setOnlyGov(bool arg1) {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    stor23 = uint8(arg1)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setbuyBackAddress(address arg1) {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    buyBackAddress = arg1
}

function setControllerFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 > controllerFeeUL:
        revert with 0, 'too high'
    controllerFee = arg1
}

function setbuyBackRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if buyBackRate > buyBackRateUL:
        revert with 0, 'too high'
    buyBackRate = arg1
}

function setEntranceFeeFactor(uint256 arg1) {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 <= entranceFeeFactorLL:
        revert with 0, '!safe - too low'
    entranceFeeFactor = arg1
}

function wrapBNB() {
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.deposit() with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateBalance() {
    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    supplyBal = ext_call.return_data[0]
    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    borrowBal = ext_call.return_data[0]
}

function wantLockedTotal() {
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) + ext_call.return_data[0] < eth.balance(this.address):
        revert with 0, 'SafeMath: addition overflow'
    if supplyBal < 0:
        revert with 0, 'SafeMath: addition overflow'
    if borrowBal > eth.balance(this.address) + ext_call.return_data[0] + supplyBal:
        revert with 0, 'SafeMath: subtraction overflow'
    return (eth.balance(this.address) + ext_call.return_data[0] + supplyBal - borrowBal)
}

function deleverageOnce(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > 599:
        revert with 0, '!safe'
    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.repayBorrow() with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    borrowBal = ext_call.return_data[0]
    if not borrowBal:
        if arg1 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg1
        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 / arg1 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.redeemUnderlying(uint256 rg1) with:
             gas gas_remaining wei
            args (ext_call.return_data[0] - (0 / arg1))
    else:
        require borrowBal
        if 1000 * borrowBal / borrowBal != 1000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg1 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg1
        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 1000 * borrowBal / arg1 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.redeemUnderlying(uint256 rg1) with:
             gas gas_remaining wei
            args (ext_call.return_data[0] - (1000 * borrowBal / arg1))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    supplyBal = ext_call.return_data[0]
    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    borrowBal = ext_call.return_data[0]
}

function pause() {
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    Mask(96, 0, stor0.field_160) = 1
    emit Paused(msg.sender);
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(0xcf6bb5389c92bdda8a3747ddb454cb7a64626c63) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), 0
    mem[324 len 0] = 0
    call 0xcf6bb5389c92bdda8a3747ddb454cb7a64626c63 with:
       funct uint32(stor5)
         gas gas_remaining wei
        args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), 0
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor5):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, address(pancakeSwapRouterAddress), 0
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
           funct uint32(stor5)
             gas gas_remaining wei
            args 0, mem[360 len 28], mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), 0
            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor5):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
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
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 531 len 26]
        if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = 0, address(pancakeSwapRouterAddress), 0
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
           funct uint32(stor5)
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), 0
            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor5):
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
        else:
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function unpause() {
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if not uint8(stor0.field_160):
        revert with 0, 'Pausable: not paused'
    Mask(96, 0, stor0.field_160) = 0
    emit Unpaused(msg.sender);
    require ext_code.size(0xcf6bb5389c92bdda8a3747ddb454cb7a64626c63)
    staticcall 0xcf6bb5389c92bdda8a3747ddb454cb7a64626c63.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(pancakeSwapRouterAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                    mem[218 len 10]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(0xcf6bb5389c92bdda8a3747ddb454cb7a64626c63) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[324 len 0] = 0
    call 0xcf6bb5389c92bdda8a3747ddb454cb7a64626c63 with:
       funct uint32(stor5)
         gas gas_remaining wei
        args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), -1
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor5):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
        staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(pancakeSwapRouterAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[382 len 10]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, address(pancakeSwapRouterAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
           funct uint32(stor5)
             gas gas_remaining wei
            args -1, mem[360 len 28], mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), -1
            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor5):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
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
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
        staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(pancakeSwapRouterAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[ceil32(return_data.size) + 383 len 10]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 531 len 26]
        if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = 0, address(pancakeSwapRouterAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
           funct uint32(stor5)
             gas gas_remaining wei
            args -1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), -1
            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor5):
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
        else:
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function farm() payable {
    mem[64] = 96
    require not msg.value
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        if eth.balance(this.address) < 10^12:
            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            supplyBal = ext_call.return_data[0]
            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                 gas gas_remaining wei
                args this.address
        else:
            idx = 0
            s = eth.balance(this.address)
            while idx < borrowDepth:
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                   value s wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not s:
                    _96 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_96] = 26
                    mem[_96 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = 0
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = 0
                    continue 
                require s
                if s * borrowRate / s != borrowRate:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _105 = mem[64]
                mem[64] = mem[64] + 64
                mem[_105] = 26
                mem[_105 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = s * borrowRate / 1000
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                     gas gas_remaining wei
                    args (s * borrowRate / 1000)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = s * borrowRate / 1000
                continue 
            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
               value s wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            supplyBal = ext_call.return_data[0]
            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                 gas gas_remaining wei
                args address(this.address)
    else:
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) < 10^12:
            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            supplyBal = ext_call.return_data[0]
            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                 gas gas_remaining wei
                args this.address
        else:
            idx = 0
            s = eth.balance(this.address)
            while idx < borrowDepth:
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                   value s wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not s:
                    _98 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_98] = 26
                    mem[_98 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = 0
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = 0
                    continue 
                require s
                if s * borrowRate / s != borrowRate:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _106 = mem[64]
                mem[64] = mem[64] + 64
                mem[_106] = 26
                mem[_106 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = s * borrowRate / 1000
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                     gas gas_remaining wei
                    args (s * borrowRate / 1000)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = s * borrowRate / 1000
                continue 
            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
               value s wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            supplyBal = ext_call.return_data[0]
            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                 gas gas_remaining wei
                args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    borrowBal = ext_call.return_data[0]
    return 0
}

function rebalance(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 > 599:
        revert with 0, '!rate'
    if arg2 > 10:
        revert with 0, '!depth'
    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    borrowBal = ext_call.return_data[0]
    if not borrowBal:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if borrowRate <= 0:
            revert with 0, 'SafeMath: division by zero'
        require borrowRate
        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[64] = 224
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if 0 / borrowRate > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[228] = ext_call.return_data[0] - (0 / borrowRate)
        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.redeemUnderlying(uint256 rg1) with:
             gas gas_remaining wei
            args (ext_call.return_data[0] - (0 / borrowRate))
        mem[224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = ext_call.return_data[0]
        while eth.balance(this.address) < borrowBal:
            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.repayBorrow() with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            borrowBal = ext_call.return_data[0]
            if not borrowBal:
                _386 = mem[64]
                mem[64] = mem[64] + 64
                mem[_386] = 26
                mem[_386 + 32] = 'SafeMath: division by zero'
                if borrowRate <= 0:
                    _396 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_396 + idx + 68] = mem[_386 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_396 + 68] = mem[_396 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _396 + -mem[64] + 100
                require borrowRate
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _452 = mem[64]
                mem[64] = mem[64] + 64
                mem[_452] = 30
                mem[_452 + 32] = 'SafeMath: subtraction overflow'
                if 0 / borrowRate <= ext_call.return_data[0]:
                    mem[mem[64] + 4] = ext_call.return_data[0] - (0 / borrowRate)
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.redeemUnderlying(uint256 rg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] - (0 / borrowRate))
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    s = ext_call.return_data[0]
                    continue 
                _464 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_464 + idx + 68] = mem[_452 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_464 + 68] = mem[_464 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _464 + -mem[64] + 100
            require borrowBal
            if 1000 * borrowBal / borrowBal != 1000:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _395 = mem[64]
            mem[64] = mem[64] + 64
            mem[_395] = 26
            mem[_395 + 32] = 'SafeMath: division by zero'
            if borrowRate <= 0:
                _407 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_407 + idx + 68] = mem[_395 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_407 + 68] = mem[_407 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _407 + -mem[64] + 100
            require borrowRate
            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _463 = mem[64]
            mem[64] = mem[64] + 64
            mem[_463] = 30
            mem[_463 + 32] = 'SafeMath: subtraction overflow'
            if 1000 * borrowBal / borrowRate <= ext_call.return_data[0]:
                mem[mem[64] + 4] = ext_call.return_data[0] - (1000 * borrowBal / borrowRate)
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.redeemUnderlying(uint256 rg1) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] - (1000 * borrowBal / borrowRate))
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                s = ext_call.return_data[0]
                continue 
            _493 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_493 + idx + 68] = mem[_463 + idx + 32]
                idx = idx + 32
                continue 
            mem[_493 + 68] = mem[_493 + 70 len 30]
            revert with memory
              from mem[64]
               len _493 + -mem[64] + 100
        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.repayBorrow() with:
           value borrowBal wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
        staticcall 0xa07c5b74c9b40447a954e1466938b865b6bbea36.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.redeem(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        borrowRate = arg1
        borrowDepth = arg2
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
        staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            if eth.balance(this.address) >= 10^12:
                idx = 0
                s = eth.balance(this.address)
                while idx < borrowDepth:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                       value s wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not s:
                        _690 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_690] = 26
                        mem[_690 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = 0
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = 0
                        continue 
                    require s
                    if s * borrowRate / s != borrowRate:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _707 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_707] = 26
                    mem[_707 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = s * borrowRate / 1000
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (s * borrowRate / 1000)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s * borrowRate / 1000
                    continue 
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                   value s wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) >= 10^12:
                idx = 0
                s = eth.balance(this.address)
                while idx < borrowDepth:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                       value s wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not s:
                        _692 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_692] = 26
                        mem[_692 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = 0
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = 0
                        continue 
                    require s
                    if s * borrowRate / s != borrowRate:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _708 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_708] = 26
                    mem[_708 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = s * borrowRate / 1000
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (s * borrowRate / 1000)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s * borrowRate / 1000
                    continue 
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                   value s wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        require borrowBal
        if 1000 * borrowBal / borrowBal != 1000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if borrowRate <= 0:
            revert with 0, 'SafeMath: division by zero'
        require borrowRate
        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[64] = 224
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if 1000 * borrowBal / borrowRate > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[228] = ext_call.return_data[0] - (1000 * borrowBal / borrowRate)
        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.redeemUnderlying(uint256 rg1) with:
             gas gas_remaining wei
            args (ext_call.return_data[0] - (1000 * borrowBal / borrowRate))
        mem[224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = ext_call.return_data[0]
        s = 1000 * borrowBal / borrowRate
        while eth.balance(this.address) < borrowBal:
            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.repayBorrow() with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            borrowBal = ext_call.return_data[0]
            if not borrowBal:
                _385 = mem[64]
                mem[64] = mem[64] + 64
                mem[_385] = 26
                mem[_385 + 32] = 'SafeMath: division by zero'
                if borrowRate <= 0:
                    _392 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_392 + idx + 68] = mem[_385 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_392 + 68] = mem[_392 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _392 + -mem[64] + 100
                require borrowRate
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _446 = mem[64]
                mem[64] = mem[64] + 64
                mem[_446] = 30
                mem[_446 + 32] = 'SafeMath: subtraction overflow'
                if 0 / borrowRate <= ext_call.return_data[0]:
                    mem[mem[64] + 4] = ext_call.return_data[0] - (0 / borrowRate)
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.redeemUnderlying(uint256 rg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] - (0 / borrowRate))
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    s = ext_call.return_data[0]
                    s = 0 / borrowRate
                    continue 
                _460 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_460 + idx + 68] = mem[_446 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_460 + 68] = mem[_460 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _460 + -mem[64] + 100
            require borrowBal
            if 1000 * borrowBal / borrowBal != 1000:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _391 = mem[64]
            mem[64] = mem[64] + 64
            mem[_391] = 26
            mem[_391 + 32] = 'SafeMath: division by zero'
            if borrowRate <= 0:
                _402 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_402 + idx + 68] = mem[_391 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_402 + 68] = mem[_402 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _402 + -mem[64] + 100
            require borrowRate
            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _459 = mem[64]
            mem[64] = mem[64] + 64
            mem[_459] = 30
            mem[_459 + 32] = 'SafeMath: subtraction overflow'
            if 1000 * borrowBal / borrowRate <= ext_call.return_data[0]:
                mem[mem[64] + 4] = ext_call.return_data[0] - (1000 * borrowBal / borrowRate)
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.redeemUnderlying(uint256 rg1) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] - (1000 * borrowBal / borrowRate))
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                s = ext_call.return_data[0]
                s = 1000 * borrowBal / borrowRate
                continue 
            _482 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_482 + idx + 68] = mem[_459 + idx + 32]
                idx = idx + 32
                continue 
            mem[_482 + 68] = mem[_482 + 70 len 30]
            revert with memory
              from mem[64]
               len _482 + -mem[64] + 100
        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.repayBorrow() with:
           value borrowBal wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
        staticcall 0xa07c5b74c9b40447a954e1466938b865b6bbea36.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.redeem(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        borrowRate = arg1
        borrowDepth = arg2
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
        staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            if eth.balance(this.address) >= 10^12:
                idx = 0
                s = eth.balance(this.address)
                while idx < borrowDepth:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                       value s wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not s:
                        _686 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_686] = 26
                        mem[_686 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = 0
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = 0
                        continue 
                    require s
                    if s * borrowRate / s != borrowRate:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _705 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_705] = 26
                    mem[_705 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = s * borrowRate / 1000
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (s * borrowRate / 1000)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s * borrowRate / 1000
                    continue 
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                   value s wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) >= 10^12:
                idx = 0
                s = eth.balance(this.address)
                while idx < borrowDepth:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                       value s wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not s:
                        _688 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_688] = 26
                        mem[_688 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = 0
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = 0
                        continue 
                    require s
                    if s * borrowRate / s != borrowRate:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _706 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_706] = 26
                    mem[_706 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = s * borrowRate / 1000
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (s * borrowRate / 1000)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s * borrowRate / 1000
                    continue 
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                   value s wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    supplyBal = ext_call.return_data[0]
    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    borrowBal = ext_call.return_data[0]
}

function deposit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    supplyBal = ext_call.return_data[0]
    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    borrowBal = ext_call.return_data[0]
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) + ext_call.return_data[0] < eth.balance(this.address):
        revert with 0, 'SafeMath: addition overflow'
    if supplyBal < 0:
        revert with 0, 'SafeMath: addition overflow'
    if borrowBal > eth.balance(this.address) + ext_call.return_data[0] + supplyBal:
        revert with 0, 'SafeMath: subtraction overflow'
    if eth.balance(this.address) + ext_call.return_data[0] + supplyBal - borrowBal <= 0:
        sharesTotal += arg1
        mem[196] = msg.sender
        mem[228] = this.address
        mem[260] = arg1
        mem[196 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[292] = 32
        mem[324] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
        if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
        mem[480 len 4] = 0
        mem[452 len 0] = 0
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[452 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[64] = ceil32(return_data.size) + 357
        mem[356] = return_data.size
        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            mem[ceil32(return_data.size) + 361] = this.address
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 357] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                if eth.balance(this.address) < 10^12:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    supplyBal = ext_call.return_data[0]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = eth.balance(this.address)
                    while idx < borrowDepth:
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                           value s wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _3998 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3998] = 26
                            mem[_3998 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _4193 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4193] = 26
                        mem[_4193 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 1000
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 1000)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 1000
                        continue 
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                       value s wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    supplyBal = ext_call.return_data[0]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
            else:
                mem[ceil32(return_data.size) + 357] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < 10^12:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    supplyBal = ext_call.return_data[0]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = eth.balance(this.address)
                    while idx < borrowDepth:
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                           value s wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _4000 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4000] = 26
                            mem[_4000 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _4194 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4194] = 26
                        mem[_4194 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 1000
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 1000)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 1000
                        continue 
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                       value s wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    supplyBal = ext_call.return_data[0]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
        else:
            require return_data.size >= 32
            if not mem[388]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 467 len 22]
            mem[ceil32(return_data.size) + 361] = this.address
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 357] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                if eth.balance(this.address) < 10^12:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    supplyBal = ext_call.return_data[0]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = eth.balance(this.address)
                    while idx < borrowDepth:
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                           value s wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _4002 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4002] = 26
                            mem[_4002 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _4195 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4195] = 26
                        mem[_4195 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 1000
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 1000)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 1000
                        continue 
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                       value s wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    supplyBal = ext_call.return_data[0]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
            else:
                mem[ceil32(return_data.size) + 357] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < 10^12:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    supplyBal = ext_call.return_data[0]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = eth.balance(this.address)
                    while idx < borrowDepth:
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                           value s wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _4004 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4004] = 26
                            mem[_4004 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _4196 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4196] = 26
                        mem[_4196 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 1000
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 1000)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 1000
                        continue 
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                       value s wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    supplyBal = ext_call.return_data[0]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        borrowBal = ext_call.return_data[0]
        return arg1
    if sharesTotal <= 0:
        sharesTotal += arg1
        mem[196] = msg.sender
        mem[228] = this.address
        mem[260] = arg1
        mem[196 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[292] = 32
        mem[324] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
        if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
        mem[480 len 4] = 0
        mem[452 len 0] = 0
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[452 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[64] = ceil32(return_data.size) + 357
        mem[356] = return_data.size
        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            mem[ceil32(return_data.size) + 361] = this.address
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 357] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                if eth.balance(this.address) < 10^12:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    supplyBal = ext_call.return_data[0]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = eth.balance(this.address)
                    while idx < borrowDepth:
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                           value s wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _4014 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4014] = 26
                            mem[_4014 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _4201 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4201] = 26
                        mem[_4201 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 1000
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 1000)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 1000
                        continue 
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                       value s wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    supplyBal = ext_call.return_data[0]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
            else:
                mem[ceil32(return_data.size) + 357] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < 10^12:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    supplyBal = ext_call.return_data[0]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = eth.balance(this.address)
                    while idx < borrowDepth:
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                           value s wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _4016 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4016] = 26
                            mem[_4016 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _4202 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4202] = 26
                        mem[_4202 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 1000
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 1000)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 1000
                        continue 
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                       value s wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    supplyBal = ext_call.return_data[0]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
        else:
            require return_data.size >= 32
            if not mem[388]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 467 len 22]
            mem[ceil32(return_data.size) + 361] = this.address
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 357] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                if eth.balance(this.address) < 10^12:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    supplyBal = ext_call.return_data[0]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = eth.balance(this.address)
                    while idx < borrowDepth:
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                           value s wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _4018 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4018] = 26
                            mem[_4018 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _4203 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4203] = 26
                        mem[_4203 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 1000
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 1000)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 1000
                        continue 
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                       value s wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    supplyBal = ext_call.return_data[0]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
            else:
                mem[ceil32(return_data.size) + 357] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < 10^12:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    supplyBal = ext_call.return_data[0]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = eth.balance(this.address)
                    while idx < borrowDepth:
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                           value s wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _4020 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4020] = 26
                            mem[_4020 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _4204 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4204] = 26
                        mem[_4204 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 1000
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 1000)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 1000
                        continue 
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                       value s wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    supplyBal = ext_call.return_data[0]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        borrowBal = ext_call.return_data[0]
        return arg1
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) + ext_call.return_data[0] < eth.balance(this.address):
        revert with 0, 'SafeMath: addition overflow'
    if supplyBal < 0:
        revert with 0, 'SafeMath: addition overflow'
    mem[192] = 'SafeMath: subtraction overflow'
    if borrowBal > eth.balance(this.address) + ext_call.return_data[0] + supplyBal:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg1:
        mem[224] = 26
        mem[256] = 'SafeMath: division by zero'
        if eth.balance(this.address) + ext_call.return_data[0] + supplyBal - borrowBal <= 0:
            revert with 0, 'SafeMath: division by zero'
        require eth.balance(this.address) + ext_call.return_data[0] + supplyBal - borrowBal
        mem[288] = 26
        mem[320] = 'SafeMath: division by zero'
        if entranceFeeFactorMax <= 0:
            revert with 0, 'SafeMath: division by zero'
        require entranceFeeFactorMax
        sharesTotal += 0 / eth.balance(this.address) + ext_call.return_data[0] + supplyBal - borrowBal / entranceFeeFactorMax
        mem[388] = msg.sender
        mem[420] = this.address
        mem[452] = arg1
        mem[352] = 100
        mem[388 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[384 len 4] = unknown_0x23b872dd(?????)
        mem[484] = 32
        mem[516] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[654 len 26]
        if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
        mem[672 len 4] = 0
        mem[644 len 0] = 0
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[644 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[64] = ceil32(return_data.size) + 549
        mem[548] = return_data.size
        mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            mem[ceil32(return_data.size) + 553] = this.address
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 549] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                if eth.balance(this.address) < 10^12:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    supplyBal = ext_call.return_data[0]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = eth.balance(this.address)
                    while idx < borrowDepth:
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                           value s wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _4062 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4062] = 26
                            mem[_4062 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _4225 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4225] = 26
                        mem[_4225 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 1000
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 1000)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 1000
                        continue 
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                       value s wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    supplyBal = ext_call.return_data[0]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
            else:
                mem[ceil32(return_data.size) + 549] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 553] = ext_call.return_data[0]
                require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < 10^12:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    supplyBal = ext_call.return_data[0]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = eth.balance(this.address)
                    while idx < borrowDepth:
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                           value s wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _4064 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4064] = 26
                            mem[_4064 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _4226 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4226] = 26
                        mem[_4226 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 1000
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 1000)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 1000
                        continue 
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                       value s wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    supplyBal = ext_call.return_data[0]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
        else:
            require return_data.size >= 32
            if not mem[580]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 659 len 22]
            mem[ceil32(return_data.size) + 553] = this.address
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 549] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                if eth.balance(this.address) < 10^12:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    supplyBal = ext_call.return_data[0]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = eth.balance(this.address)
                    while idx < borrowDepth:
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                           value s wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _4066 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4066] = 26
                            mem[_4066 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _4227 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4227] = 26
                        mem[_4227 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 1000
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 1000)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 1000
                        continue 
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                       value s wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    supplyBal = ext_call.return_data[0]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
            else:
                mem[ceil32(return_data.size) + 549] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 553] = ext_call.return_data[0]
                require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < 10^12:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    supplyBal = ext_call.return_data[0]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = eth.balance(this.address)
                    while idx < borrowDepth:
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                           value s wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _4068 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4068] = 26
                            mem[_4068 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _4228 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4228] = 26
                        mem[_4228 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 1000
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 1000)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 1000
                        continue 
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                       value s wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    supplyBal = ext_call.return_data[0]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        borrowBal = ext_call.return_data[0]
        return (0 / eth.balance(this.address) + ext_call.return_data[0] + supplyBal - borrowBal / entranceFeeFactorMax)
    require arg1
    if arg1 * sharesTotal / arg1 != sharesTotal:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not arg1 * sharesTotal:
        mem[224] = 26
        mem[256] = 'SafeMath: division by zero'
        if eth.balance(this.address) + ext_call.return_data[0] + supplyBal - borrowBal <= 0:
            revert with 0, 'SafeMath: division by zero'
        require eth.balance(this.address) + ext_call.return_data[0] + supplyBal - borrowBal
        mem[288] = 26
        mem[320] = 'SafeMath: division by zero'
        if entranceFeeFactorMax <= 0:
            revert with 0, 'SafeMath: division by zero'
        require entranceFeeFactorMax
        sharesTotal += 0 / eth.balance(this.address) + ext_call.return_data[0] + supplyBal - borrowBal / entranceFeeFactorMax
        mem[388] = msg.sender
        mem[420] = this.address
        mem[452] = arg1
        mem[352] = 100
        mem[388 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[384 len 4] = unknown_0x23b872dd(?????)
        mem[484] = 32
        mem[516] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[654 len 26]
        if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
        mem[672 len 4] = 0
        mem[644 len 0] = 0
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[644 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[64] = ceil32(return_data.size) + 549
        mem[548] = return_data.size
        mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            mem[ceil32(return_data.size) + 553] = this.address
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 549] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                if eth.balance(this.address) < 10^12:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    supplyBal = ext_call.return_data[0]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = eth.balance(this.address)
                    while idx < borrowDepth:
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                           value s wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _4046 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4046] = 26
                            mem[_4046 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _4217 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4217] = 26
                        mem[_4217 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 1000
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 1000)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 1000
                        continue 
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                       value s wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    supplyBal = ext_call.return_data[0]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
            else:
                mem[ceil32(return_data.size) + 549] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 553] = ext_call.return_data[0]
                require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < 10^12:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    supplyBal = ext_call.return_data[0]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = eth.balance(this.address)
                    while idx < borrowDepth:
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                           value s wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _4048 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4048] = 26
                            mem[_4048 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _4218 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4218] = 26
                        mem[_4218 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 1000
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 1000)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 1000
                        continue 
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                       value s wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    supplyBal = ext_call.return_data[0]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
        else:
            require return_data.size >= 32
            if not mem[580]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 659 len 22]
            mem[ceil32(return_data.size) + 553] = this.address
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 549] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                if eth.balance(this.address) < 10^12:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    supplyBal = ext_call.return_data[0]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = eth.balance(this.address)
                    while idx < borrowDepth:
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                           value s wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _4050 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4050] = 26
                            mem[_4050 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _4219 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4219] = 26
                        mem[_4219 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 1000
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 1000)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 1000
                        continue 
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                       value s wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    supplyBal = ext_call.return_data[0]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
            else:
                mem[ceil32(return_data.size) + 549] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 553] = ext_call.return_data[0]
                require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < 10^12:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    supplyBal = ext_call.return_data[0]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = eth.balance(this.address)
                    while idx < borrowDepth:
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                           value s wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _4052 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4052] = 26
                            mem[_4052 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _4220 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4220] = 26
                        mem[_4220 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 1000
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 1000)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 1000
                        continue 
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                       value s wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    supplyBal = ext_call.return_data[0]
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        borrowBal = ext_call.return_data[0]
        return (0 / eth.balance(this.address) + ext_call.return_data[0] + supplyBal - borrowBal / entranceFeeFactorMax)
    require arg1 * sharesTotal
    if arg1 * sharesTotal * entranceFeeFactor / arg1 * sharesTotal != entranceFeeFactor:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    mem[224] = 26
    mem[256] = 'SafeMath: division by zero'
    if eth.balance(this.address) + ext_call.return_data[0] + supplyBal - borrowBal <= 0:
        revert with 0, 'SafeMath: division by zero'
    require eth.balance(this.address) + ext_call.return_data[0] + supplyBal - borrowBal
    mem[288] = 26
    mem[320] = 'SafeMath: division by zero'
    if entranceFeeFactorMax <= 0:
        revert with 0, 'SafeMath: division by zero'
    require entranceFeeFactorMax
    sharesTotal += arg1 * sharesTotal * entranceFeeFactor / eth.balance(this.address) + ext_call.return_data[0] + supplyBal - borrowBal / entranceFeeFactorMax
    mem[388] = msg.sender
    mem[420] = this.address
    mem[452] = arg1
    mem[352] = 100
    mem[388 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[384 len 4] = unknown_0x23b872dd(?????)
    mem[484] = 32
    mem[516] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[654 len 26]
    if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[672 len 4] = 0
    mem[644 len 0] = 0
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[644 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: subtraction overflow'
    mem[64] = ceil32(return_data.size) + 549
    mem[548] = return_data.size
    mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size <= 0:
        mem[ceil32(return_data.size) + 553] = this.address
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
        staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 549] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            if eth.balance(this.address) < 10^12:
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                supplyBal = ext_call.return_data[0]
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                idx = 0
                s = eth.balance(this.address)
                while idx < borrowDepth:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                       value s wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not s:
                        _4030 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4030] = 26
                        mem[_4030 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = 0
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = 0
                        continue 
                    require s
                    if s * borrowRate / s != borrowRate:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _4209 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4209] = 26
                    mem[_4209 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = s * borrowRate / 1000
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (s * borrowRate / 1000)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s * borrowRate / 1000
                    continue 
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                   value s wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                supplyBal = ext_call.return_data[0]
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
        else:
            mem[ceil32(return_data.size) + 549] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 553] = ext_call.return_data[0]
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < 10^12:
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                supplyBal = ext_call.return_data[0]
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                idx = 0
                s = eth.balance(this.address)
                while idx < borrowDepth:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                       value s wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not s:
                        _4032 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4032] = 26
                        mem[_4032 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = 0
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = 0
                        continue 
                    require s
                    if s * borrowRate / s != borrowRate:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _4210 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4210] = 26
                    mem[_4210 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = s * borrowRate / 1000
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (s * borrowRate / 1000)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s * borrowRate / 1000
                    continue 
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                   value s wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                supplyBal = ext_call.return_data[0]
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
    else:
        require return_data.size >= 32
        if not mem[580]:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 659 len 22]
        mem[ceil32(return_data.size) + 553] = this.address
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
        staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 549] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            if eth.balance(this.address) < 10^12:
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                supplyBal = ext_call.return_data[0]
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                idx = 0
                s = eth.balance(this.address)
                while idx < borrowDepth:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                       value s wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not s:
                        _4034 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4034] = 26
                        mem[_4034 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = 0
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = 0
                        continue 
                    require s
                    if s * borrowRate / s != borrowRate:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _4211 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4211] = 26
                    mem[_4211 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = s * borrowRate / 1000
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (s * borrowRate / 1000)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s * borrowRate / 1000
                    continue 
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                   value s wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                supplyBal = ext_call.return_data[0]
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
        else:
            mem[ceil32(return_data.size) + 549] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 553] = ext_call.return_data[0]
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < 10^12:
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                supplyBal = ext_call.return_data[0]
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                idx = 0
                s = eth.balance(this.address)
                while idx < borrowDepth:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                       value s wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not s:
                        _4036 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4036] = 26
                        mem[_4036 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = 0
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = 0
                        continue 
                    require s
                    if s * borrowRate / s != borrowRate:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _4212 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4212] = 26
                    mem[_4212 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = s * borrowRate / 1000
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (s * borrowRate / 1000)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s * borrowRate / 1000
                    continue 
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                   value s wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                supplyBal = ext_call.return_data[0]
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    borrowBal = ext_call.return_data[0]
    return (arg1 * sharesTotal * entranceFeeFactor / eth.balance(this.address) + ext_call.return_data[0] + supplyBal - borrowBal / entranceFeeFactorMax)
}



}
