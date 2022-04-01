contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - earn()
#
const sub_0c8f3c06(?) = 1000 * 10^18

const vTokenAddress = 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8

const venusAddress = 0xcf6bb5389c92bdda8a3747ddb454cb7a64626c63

const wbnbAddress = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c

const wantLockedInHere = ext_call.return_data[0]

const wantAddress = 0x2170ed0880ac9a755fd29b2688956bd959f933f8

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

function wantLockedTotal() {
    require ext_code.size(0x2170ed0880ac9a755fd29b2688956bd959f933f8)
    staticcall 0x2170ed0880ac9a755fd29b2688956bd959f933f8.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + supplyBal < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if borrowBal > ext_call.return_data[0] + supplyBal:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] + supplyBal - borrowBal)
}

function updateBalance() {
    require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
    call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    supplyBal = ext_call.return_data[0]
    require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
    call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    borrowBal = ext_call.return_data[0]
}

function deleverageOnce(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > 599:
        revert with 0, '!safe'
    require ext_code.size(0x2170ed0880ac9a755fd29b2688956bd959f933f8)
    staticcall 0x2170ed0880ac9a755fd29b2688956bd959f933f8.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
    call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.repayBorrow(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
    call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrowBalanceCurrent(address rg1) with:
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
        require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
        call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 / arg1 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
        call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.redeemUnderlying(uint256 rg1) with:
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
        require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
        call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 1000 * borrowBal / arg1 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
        call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.redeemUnderlying(uint256 rg1) with:
             gas gas_remaining wei
            args (ext_call.return_data[0] - (1000 * borrowBal / arg1))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
    call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    supplyBal = ext_call.return_data[0]
    require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
    call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    borrowBal = ext_call.return_data[0]
}

function farm() payable {
    mem[64] = 96
    require not msg.value
    mem[100] = this.address
    require ext_code.size(0x2170ed0880ac9a755fd29b2688956bd959f933f8)
    staticcall 0x2170ed0880ac9a755fd29b2688956bd959f933f8.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 10^12:
        require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
        call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        supplyBal = ext_call.return_data[0]
        require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
        call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrowBalanceCurrent(address rg1) with:
             gas gas_remaining wei
            args this.address
    else:
        idx = 0
        s = mem[mem[64]]
        while idx < borrowDepth:
            require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
            call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.0xa0712d68 with:
                 gas gas_remaining wei
                args s
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not s:
                _58 = mem[64]
                mem[64] = mem[64] + 64
                mem[_58] = 26
                mem[_58 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = 0
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrow(uint256 rg1) with:
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
            _62 = mem[64]
            mem[64] = mem[64] + 64
            mem[_62] = 26
            mem[_62 + 32] = 'SafeMath: division by zero'
            mem[mem[64] + 4] = s * borrowRate / 1000
            require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
            call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrow(uint256 rg1) with:
                 gas gas_remaining wei
                args (s * borrowRate / 1000)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            s = s * borrowRate / 1000
            continue 
        require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
        call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.0xa0712d68 with:
             gas gas_remaining wei
            args s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
        call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
             gas gas_remaining wei
            args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        supplyBal = ext_call.return_data[0]
        require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
        call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrowBalanceCurrent(address rg1) with:
             gas gas_remaining wei
            args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    borrowBal = ext_call.return_data[0]
    return 0
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
        if ext_code.size(0x2170ed0880ac9a755fd29b2688956bd959f933f8) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, address(pancakeSwapRouterAddress), 0
        call 0x2170ed0880ac9a755fd29b2688956bd959f933f8 with:
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
        if ext_code.size(0x2170ed0880ac9a755fd29b2688956bd959f933f8) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = 0, address(pancakeSwapRouterAddress), 0
        call 0x2170ed0880ac9a755fd29b2688956bd959f933f8 with:
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
        require ext_code.size(0x2170ed0880ac9a755fd29b2688956bd959f933f8)
        staticcall 0x2170ed0880ac9a755fd29b2688956bd959f933f8.0xdd62ed3e with:
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
        if ext_code.size(0x2170ed0880ac9a755fd29b2688956bd959f933f8) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, address(pancakeSwapRouterAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call 0x2170ed0880ac9a755fd29b2688956bd959f933f8 with:
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
        require ext_code.size(0x2170ed0880ac9a755fd29b2688956bd959f933f8)
        staticcall 0x2170ed0880ac9a755fd29b2688956bd959f933f8.0xdd62ed3e with:
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
        if ext_code.size(0x2170ed0880ac9a755fd29b2688956bd959f933f8) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = 0, address(pancakeSwapRouterAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call 0x2170ed0880ac9a755fd29b2688956bd959f933f8 with:
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

function rebalance(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 > 599:
        revert with 0, '!rate'
    if arg2 > 10:
        revert with 0, '!depth'
    require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
    call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrowBalanceCurrent(address rg1) with:
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
        require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
        call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
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
        require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
        call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.redeemUnderlying(uint256 rg1) with:
             gas gas_remaining wei
            args (ext_call.return_data[0] - (0 / borrowRate))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[228] = this.address
        require ext_code.size(0x2170ed0880ac9a755fd29b2688956bd959f933f8)
        staticcall 0x2170ed0880ac9a755fd29b2688956bd959f933f8.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = mem[mem[64]]
        s = ext_call.return_data[0]
        while idx < borrowBal:
            require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
            call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.repayBorrow(uint256 rg1) with:
                 gas gas_remaining wei
                args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
            call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrowBalanceCurrent(address rg1) with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            borrowBal = ext_call.return_data[0]
            if not borrowBal:
                _366 = mem[64]
                mem[64] = mem[64] + 64
                mem[_366] = 26
                mem[_366 + 32] = 'SafeMath: division by zero'
                if borrowRate <= 0:
                    _376 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_376 + idx + 68] = mem[_366 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_376 + 68] = mem[_376 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _376 + -mem[64] + 100
                require borrowRate
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _420 = mem[64]
                mem[64] = mem[64] + 64
                mem[_420] = 30
                mem[_420 + 32] = 'SafeMath: subtraction overflow'
                if 0 / borrowRate > ext_call.return_data[0]:
                    _440 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_440 + idx + 68] = mem[_420 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_440 + 68] = mem[_440 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _440 + -mem[64] + 100
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.redeemUnderlying(uint256 rg1) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] - (0 / borrowRate))
            else:
                require borrowBal
                if 1000 * borrowBal / borrowBal != 1000:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _375 = mem[64]
                mem[64] = mem[64] + 64
                mem[_375] = 26
                mem[_375 + 32] = 'SafeMath: division by zero'
                if borrowRate <= 0:
                    _385 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_385 + idx + 68] = mem[_375 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_385 + 68] = mem[_385 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _385 + -mem[64] + 100
                require borrowRate
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _439 = mem[64]
                mem[64] = mem[64] + 64
                mem[_439] = 30
                mem[_439 + 32] = 'SafeMath: subtraction overflow'
                if 1000 * borrowBal / borrowRate > ext_call.return_data[0]:
                    _459 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_459 + idx + 68] = mem[_439 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_459 + 68] = mem[_459 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _459 + -mem[64] + 100
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.redeemUnderlying(uint256 rg1) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] - (1000 * borrowBal / borrowRate))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x2170ed0880ac9a755fd29b2688956bd959f933f8)
            staticcall 0x2170ed0880ac9a755fd29b2688956bd959f933f8.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = ext_call.return_data[0]
            s = ext_call.return_data[0]
            continue 
        require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
        call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.repayBorrow(uint256 rg1) with:
             gas gas_remaining wei
            args borrowBal
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
        staticcall 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
        call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.redeem(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        borrowRate = arg1
        borrowDepth = arg2
        require ext_code.size(0x2170ed0880ac9a755fd29b2688956bd959f933f8)
        staticcall 0x2170ed0880ac9a755fd29b2688956bd959f933f8.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 10^12:
            idx = 0
            s = mem[mem[64]]
            while idx < borrowDepth:
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.0xa0712d68 with:
                     gas gas_remaining wei
                    args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not s:
                    _616 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_616] = 26
                    mem[_616 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = 0
                    require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                    call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrow(uint256 rg1) with:
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
                _624 = mem[64]
                mem[64] = mem[64] + 64
                mem[_624] = 26
                mem[_624 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = s * borrowRate / 1000
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrow(uint256 rg1) with:
                     gas gas_remaining wei
                    args (s * borrowRate / 1000)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = s * borrowRate / 1000
                continue 
            require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
            call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.0xa0712d68 with:
                 gas gas_remaining wei
                args s
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
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
        require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
        call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
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
        require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
        call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.redeemUnderlying(uint256 rg1) with:
             gas gas_remaining wei
            args (ext_call.return_data[0] - (1000 * borrowBal / borrowRate))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[228] = this.address
        require ext_code.size(0x2170ed0880ac9a755fd29b2688956bd959f933f8)
        staticcall 0x2170ed0880ac9a755fd29b2688956bd959f933f8.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = mem[mem[64]]
        s = ext_call.return_data[0]
        s = 1000 * borrowBal / borrowRate
        while idx < borrowBal:
            require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
            call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.repayBorrow(uint256 rg1) with:
                 gas gas_remaining wei
                args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
            call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrowBalanceCurrent(address rg1) with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            borrowBal = ext_call.return_data[0]
            if not borrowBal:
                _365 = mem[64]
                mem[64] = mem[64] + 64
                mem[_365] = 26
                mem[_365 + 32] = 'SafeMath: division by zero'
                if borrowRate <= 0:
                    _370 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_370 + idx + 68] = mem[_365 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_370 + 68] = mem[_370 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _370 + -mem[64] + 100
                require borrowRate
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _418 = mem[64]
                mem[64] = mem[64] + 64
                mem[_418] = 30
                mem[_418 + 32] = 'SafeMath: subtraction overflow'
                if 0 / borrowRate > ext_call.return_data[0]:
                    _434 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_434 + idx + 68] = mem[_418 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_434 + 68] = mem[_434 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _434 + -mem[64] + 100
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.redeemUnderlying(uint256 rg1) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] - (0 / borrowRate))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                require ext_code.size(0x2170ed0880ac9a755fd29b2688956bd959f933f8)
                staticcall 0x2170ed0880ac9a755fd29b2688956bd959f933f8.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = ext_call.return_data[0]
                s = ext_call.return_data[0]
                s = 0 / borrowRate
                continue 
            require borrowBal
            if 1000 * borrowBal / borrowBal != 1000:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _369 = mem[64]
            mem[64] = mem[64] + 64
            mem[_369] = 26
            mem[_369 + 32] = 'SafeMath: division by zero'
            if borrowRate <= 0:
                _380 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_380 + idx + 68] = mem[_369 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_380 + 68] = mem[_380 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _380 + -mem[64] + 100
            require borrowRate
            require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
            call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _433 = mem[64]
            mem[64] = mem[64] + 64
            mem[_433] = 30
            mem[_433 + 32] = 'SafeMath: subtraction overflow'
            if 1000 * borrowBal / borrowRate > ext_call.return_data[0]:
                _450 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_450 + idx + 68] = mem[_433 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_450 + 68] = mem[_450 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _450 + -mem[64] + 100
            require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
            call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.redeemUnderlying(uint256 rg1) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] - (1000 * borrowBal / borrowRate))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x2170ed0880ac9a755fd29b2688956bd959f933f8)
            staticcall 0x2170ed0880ac9a755fd29b2688956bd959f933f8.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = ext_call.return_data[0]
            s = ext_call.return_data[0]
            s = 1000 * borrowBal / borrowRate
            continue 
        require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
        call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.repayBorrow(uint256 rg1) with:
             gas gas_remaining wei
            args borrowBal
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
        staticcall 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
        call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.redeem(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        borrowRate = arg1
        borrowDepth = arg2
        require ext_code.size(0x2170ed0880ac9a755fd29b2688956bd959f933f8)
        staticcall 0x2170ed0880ac9a755fd29b2688956bd959f933f8.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 10^12:
            idx = 0
            s = mem[mem[64]]
            while idx < borrowDepth:
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.0xa0712d68 with:
                     gas gas_remaining wei
                    args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not s:
                    _614 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_614] = 26
                    mem[_614 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = 0
                    require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                    call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrow(uint256 rg1) with:
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
                _623 = mem[64]
                mem[64] = mem[64] + 64
                mem[_623] = 26
                mem[_623 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = s * borrowRate / 1000
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrow(uint256 rg1) with:
                     gas gas_remaining wei
                    args (s * borrowRate / 1000)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = s * borrowRate / 1000
                continue 
            require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
            call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.0xa0712d68 with:
                 gas gas_remaining wei
                args s
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
    call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    supplyBal = ext_call.return_data[0]
    require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
    call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrowBalanceCurrent(address rg1) with:
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
    require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
    call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    supplyBal = ext_call.return_data[0]
    require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
    call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    borrowBal = ext_call.return_data[0]
    require ext_code.size(0x2170ed0880ac9a755fd29b2688956bd959f933f8)
    staticcall 0x2170ed0880ac9a755fd29b2688956bd959f933f8.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + supplyBal < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    mem[96] = 30
    mem[128] = 'SafeMath: subtraction overflow'
    if borrowBal > ext_call.return_data[0] + supplyBal:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] + supplyBal - borrowBal <= 0:
        sharesTotal += arg1
        mem[196] = msg.sender
        mem[228] = this.address
        mem[260] = arg1
        mem[160] = 100
        mem[196 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[192 len 4] = unknown_0x23b872dd(?????)
        mem[292] = 32
        mem[324] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
        if ext_code.size(0x2170ed0880ac9a755fd29b2688956bd959f933f8) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
        mem[480 len 4] = 0
        mem[452 len 0] = 0
        call 0x2170ed0880ac9a755fd29b2688956bd959f933f8 with:
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
            require ext_code.size(0x2170ed0880ac9a755fd29b2688956bd959f933f8)
            staticcall 0x2170ed0880ac9a755fd29b2688956bd959f933f8.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 357] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 10^12:
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                supplyBal = ext_call.return_data[0]
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                idx = 0
                s = mem[mem[64]]
                while idx < borrowDepth:
                    require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                    call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.0xa0712d68 with:
                         gas gas_remaining wei
                        args s
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not s:
                        _2550 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2550] = 26
                        mem[_2550 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = 0
                        require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                        call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrow(uint256 rg1) with:
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
                    _2647 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2647] = 26
                    mem[_2647 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = s * borrowRate / 1000
                    require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                    call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (s * borrowRate / 1000)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s * borrowRate / 1000
                    continue 
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.0xa0712d68 with:
                     gas gas_remaining wei
                    args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                supplyBal = ext_call.return_data[0]
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrowBalanceCurrent(address rg1) with:
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
            require ext_code.size(0x2170ed0880ac9a755fd29b2688956bd959f933f8)
            staticcall 0x2170ed0880ac9a755fd29b2688956bd959f933f8.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 357] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 10^12:
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                supplyBal = ext_call.return_data[0]
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                idx = 0
                s = mem[mem[64]]
                while idx < borrowDepth:
                    require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                    call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.0xa0712d68 with:
                         gas gas_remaining wei
                        args s
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not s:
                        _2552 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2552] = 26
                        mem[_2552 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = 0
                        require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                        call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrow(uint256 rg1) with:
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
                    _2648 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2648] = 26
                    mem[_2648 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = s * borrowRate / 1000
                    require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                    call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (s * borrowRate / 1000)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s * borrowRate / 1000
                    continue 
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.0xa0712d68 with:
                     gas gas_remaining wei
                    args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                supplyBal = ext_call.return_data[0]
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrowBalanceCurrent(address rg1) with:
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
        mem[160] = 100
        mem[196 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[192 len 4] = unknown_0x23b872dd(?????)
        mem[292] = 32
        mem[324] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
        if ext_code.size(0x2170ed0880ac9a755fd29b2688956bd959f933f8) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
        mem[480 len 4] = 0
        mem[452 len 0] = 0
        call 0x2170ed0880ac9a755fd29b2688956bd959f933f8 with:
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
            require ext_code.size(0x2170ed0880ac9a755fd29b2688956bd959f933f8)
            staticcall 0x2170ed0880ac9a755fd29b2688956bd959f933f8.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 357] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 10^12:
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                supplyBal = ext_call.return_data[0]
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                idx = 0
                s = mem[mem[64]]
                while idx < borrowDepth:
                    require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                    call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.0xa0712d68 with:
                         gas gas_remaining wei
                        args s
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not s:
                        _2558 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2558] = 26
                        mem[_2558 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = 0
                        require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                        call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrow(uint256 rg1) with:
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
                    _2651 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2651] = 26
                    mem[_2651 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = s * borrowRate / 1000
                    require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                    call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (s * borrowRate / 1000)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s * borrowRate / 1000
                    continue 
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.0xa0712d68 with:
                     gas gas_remaining wei
                    args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                supplyBal = ext_call.return_data[0]
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrowBalanceCurrent(address rg1) with:
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
            require ext_code.size(0x2170ed0880ac9a755fd29b2688956bd959f933f8)
            staticcall 0x2170ed0880ac9a755fd29b2688956bd959f933f8.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 357] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 10^12:
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                supplyBal = ext_call.return_data[0]
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                idx = 0
                s = mem[mem[64]]
                while idx < borrowDepth:
                    require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                    call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.0xa0712d68 with:
                         gas gas_remaining wei
                        args s
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not s:
                        _2560 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2560] = 26
                        mem[_2560 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = 0
                        require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                        call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrow(uint256 rg1) with:
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
                    _2652 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2652] = 26
                    mem[_2652 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = s * borrowRate / 1000
                    require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                    call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (s * borrowRate / 1000)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s * borrowRate / 1000
                    continue 
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.0xa0712d68 with:
                     gas gas_remaining wei
                    args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                supplyBal = ext_call.return_data[0]
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        borrowBal = ext_call.return_data[0]
        return arg1
    require ext_code.size(0x2170ed0880ac9a755fd29b2688956bd959f933f8)
    staticcall 0x2170ed0880ac9a755fd29b2688956bd959f933f8.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + supplyBal < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    mem[160] = 30
    mem[192] = 'SafeMath: subtraction overflow'
    if borrowBal > ext_call.return_data[0] + supplyBal:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg1:
        mem[224] = 26
        mem[256] = 'SafeMath: division by zero'
        if ext_call.return_data[0] + supplyBal - borrowBal <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0] + supplyBal - borrowBal
        mem[288] = 26
        mem[320] = 'SafeMath: division by zero'
        if entranceFeeFactorMax <= 0:
            revert with 0, 'SafeMath: division by zero'
        require entranceFeeFactorMax
        sharesTotal += 0 / ext_call.return_data[0] + supplyBal - borrowBal / entranceFeeFactorMax
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
        if ext_code.size(0x2170ed0880ac9a755fd29b2688956bd959f933f8) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
        mem[672 len 4] = 0
        mem[644 len 0] = 0
        call 0x2170ed0880ac9a755fd29b2688956bd959f933f8 with:
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
            require ext_code.size(0x2170ed0880ac9a755fd29b2688956bd959f933f8)
            staticcall 0x2170ed0880ac9a755fd29b2688956bd959f933f8.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 549] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 10^12:
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                supplyBal = ext_call.return_data[0]
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                idx = 0
                s = mem[mem[64]]
                while idx < borrowDepth:
                    require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                    call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.0xa0712d68 with:
                         gas gas_remaining wei
                        args s
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not s:
                        _2582 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2582] = 26
                        mem[_2582 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = 0
                        require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                        call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrow(uint256 rg1) with:
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
                    _2663 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2663] = 26
                    mem[_2663 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = s * borrowRate / 1000
                    require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                    call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (s * borrowRate / 1000)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s * borrowRate / 1000
                    continue 
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.0xa0712d68 with:
                     gas gas_remaining wei
                    args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                supplyBal = ext_call.return_data[0]
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrowBalanceCurrent(address rg1) with:
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
            require ext_code.size(0x2170ed0880ac9a755fd29b2688956bd959f933f8)
            staticcall 0x2170ed0880ac9a755fd29b2688956bd959f933f8.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 549] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 10^12:
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                supplyBal = ext_call.return_data[0]
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                idx = 0
                s = mem[mem[64]]
                while idx < borrowDepth:
                    require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                    call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.0xa0712d68 with:
                         gas gas_remaining wei
                        args s
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not s:
                        _2584 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2584] = 26
                        mem[_2584 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = 0
                        require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                        call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrow(uint256 rg1) with:
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
                    _2664 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2664] = 26
                    mem[_2664 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = s * borrowRate / 1000
                    require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                    call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (s * borrowRate / 1000)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s * borrowRate / 1000
                    continue 
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.0xa0712d68 with:
                     gas gas_remaining wei
                    args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                supplyBal = ext_call.return_data[0]
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        borrowBal = ext_call.return_data[0]
        return (0 / ext_call.return_data[0] + supplyBal - borrowBal / entranceFeeFactorMax)
    require arg1
    if arg1 * sharesTotal / arg1 != sharesTotal:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not arg1 * sharesTotal:
        mem[224] = 26
        mem[256] = 'SafeMath: division by zero'
        if ext_call.return_data[0] + supplyBal - borrowBal <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0] + supplyBal - borrowBal
        mem[288] = 26
        mem[320] = 'SafeMath: division by zero'
        if entranceFeeFactorMax <= 0:
            revert with 0, 'SafeMath: division by zero'
        require entranceFeeFactorMax
        sharesTotal += 0 / ext_call.return_data[0] + supplyBal - borrowBal / entranceFeeFactorMax
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
        if ext_code.size(0x2170ed0880ac9a755fd29b2688956bd959f933f8) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
        mem[672 len 4] = 0
        mem[644 len 0] = 0
        call 0x2170ed0880ac9a755fd29b2688956bd959f933f8 with:
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
            require ext_code.size(0x2170ed0880ac9a755fd29b2688956bd959f933f8)
            staticcall 0x2170ed0880ac9a755fd29b2688956bd959f933f8.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 549] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 10^12:
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                supplyBal = ext_call.return_data[0]
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                idx = 0
                s = mem[mem[64]]
                while idx < borrowDepth:
                    require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                    call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.0xa0712d68 with:
                         gas gas_remaining wei
                        args s
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not s:
                        _2574 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2574] = 26
                        mem[_2574 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = 0
                        require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                        call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrow(uint256 rg1) with:
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
                    _2659 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2659] = 26
                    mem[_2659 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = s * borrowRate / 1000
                    require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                    call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (s * borrowRate / 1000)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s * borrowRate / 1000
                    continue 
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.0xa0712d68 with:
                     gas gas_remaining wei
                    args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                supplyBal = ext_call.return_data[0]
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrowBalanceCurrent(address rg1) with:
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
            require ext_code.size(0x2170ed0880ac9a755fd29b2688956bd959f933f8)
            staticcall 0x2170ed0880ac9a755fd29b2688956bd959f933f8.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 549] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 10^12:
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                supplyBal = ext_call.return_data[0]
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                idx = 0
                s = mem[mem[64]]
                while idx < borrowDepth:
                    require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                    call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.0xa0712d68 with:
                         gas gas_remaining wei
                        args s
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not s:
                        _2576 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2576] = 26
                        mem[_2576 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = 0
                        require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                        call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrow(uint256 rg1) with:
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
                    _2660 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2660] = 26
                    mem[_2660 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = s * borrowRate / 1000
                    require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                    call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (s * borrowRate / 1000)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s * borrowRate / 1000
                    continue 
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.0xa0712d68 with:
                     gas gas_remaining wei
                    args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                supplyBal = ext_call.return_data[0]
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        borrowBal = ext_call.return_data[0]
        return (0 / ext_call.return_data[0] + supplyBal - borrowBal / entranceFeeFactorMax)
    require arg1 * sharesTotal
    if arg1 * sharesTotal * entranceFeeFactor / arg1 * sharesTotal != entranceFeeFactor:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    mem[224] = 26
    mem[256] = 'SafeMath: division by zero'
    if ext_call.return_data[0] + supplyBal - borrowBal <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0] + supplyBal - borrowBal
    mem[288] = 26
    mem[320] = 'SafeMath: division by zero'
    if entranceFeeFactorMax <= 0:
        revert with 0, 'SafeMath: division by zero'
    require entranceFeeFactorMax
    sharesTotal += arg1 * sharesTotal * entranceFeeFactor / ext_call.return_data[0] + supplyBal - borrowBal / entranceFeeFactorMax
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
    if ext_code.size(0x2170ed0880ac9a755fd29b2688956bd959f933f8) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[672 len 4] = 0
    mem[644 len 0] = 0
    call 0x2170ed0880ac9a755fd29b2688956bd959f933f8 with:
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
        require ext_code.size(0x2170ed0880ac9a755fd29b2688956bd959f933f8)
        staticcall 0x2170ed0880ac9a755fd29b2688956bd959f933f8.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 549] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 10^12:
            require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
            call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            supplyBal = ext_call.return_data[0]
            require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
            call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrowBalanceCurrent(address rg1) with:
                 gas gas_remaining wei
                args this.address
        else:
            idx = 0
            s = mem[mem[64]]
            while idx < borrowDepth:
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.0xa0712d68 with:
                     gas gas_remaining wei
                    args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not s:
                    _2566 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2566] = 26
                    mem[_2566 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = 0
                    require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                    call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrow(uint256 rg1) with:
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
                _2655 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2655] = 26
                mem[_2655 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = s * borrowRate / 1000
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrow(uint256 rg1) with:
                     gas gas_remaining wei
                    args (s * borrowRate / 1000)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = s * borrowRate / 1000
                continue 
            require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
            call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.0xa0712d68 with:
                 gas gas_remaining wei
                args s
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
            call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            supplyBal = ext_call.return_data[0]
            require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
            call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrowBalanceCurrent(address rg1) with:
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
        require ext_code.size(0x2170ed0880ac9a755fd29b2688956bd959f933f8)
        staticcall 0x2170ed0880ac9a755fd29b2688956bd959f933f8.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 549] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 10^12:
            require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
            call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            supplyBal = ext_call.return_data[0]
            require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
            call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrowBalanceCurrent(address rg1) with:
                 gas gas_remaining wei
                args this.address
        else:
            idx = 0
            s = mem[mem[64]]
            while idx < borrowDepth:
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.0xa0712d68 with:
                     gas gas_remaining wei
                    args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not s:
                    _2568 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2568] = 26
                    mem[_2568 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = 0
                    require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                    call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrow(uint256 rg1) with:
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
                _2656 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2656] = 26
                mem[_2656 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = s * borrowRate / 1000
                require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
                call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrow(uint256 rg1) with:
                     gas gas_remaining wei
                    args (s * borrowRate / 1000)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = s * borrowRate / 1000
                continue 
            require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
            call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.0xa0712d68 with:
                 gas gas_remaining wei
                args s
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
            call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.balanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            supplyBal = ext_call.return_data[0]
            require ext_code.size(0xf508fcd89b8bd15579dc79a6827cb4686a3592c8)
            call 0xf508fcd89b8bd15579dc79a6827cb4686a3592c8.borrowBalanceCurrent(address rg1) with:
                 gas gas_remaining wei
                args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    borrowBal = ext_call.return_data[0]
    return (arg1 * sharesTotal * entranceFeeFactor / ext_call.return_data[0] + supplyBal - borrowBal / entranceFeeFactorMax)
}



}
