contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - earn()
#
const vTokenAddress = 0xa07c5b74c9b40447a954e1466938b865b6bbea36

const venusAddress = 0xcf6bb5389c92bdda8a3747ddb454cb7a64626c63

const wbnbAddress = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c

const wantLockedInHere = (eth.balance(this.address) + ext_call.return_data[0])

const wantAddress = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c

const BORROW_RATE_MAX = 599

const BORROW_DEPTH_MAX = 10

const MIN_LEVERAGE_AMOUNT = 10^12


uint8 paused; offset 160
uint128 stor0; offset 160
address owner;
array of address venusMarkets;
address venusDistributionAddress;
uint32 stor5;
address pancakeSwapRouterAddress;
uint256 stor5;
address devAddress;
uint256 sharesTotal;
uint256 lastEarnBlock;
uint256 controllerFee;
uint256 controllerFeeMax;
uint256 entranceFeeFactor;
uint256 entranceFeeFactorMax;
uint256 entranceFeeFactorLL;
array of address venusToWantPath;
array of address sub_84a4a08a;
uint256 borrowRate;
uint256 borrowDepth;
uint256 sub_9e8b23e7;

function lastEarnBlock() {
    return lastEarnBlock
}

function entranceFeeFactor() {
    return entranceFeeFactor
}

function controllerFeeMax() {
    return controllerFeeMax
}

function devAddress() {
    return devAddress
}

function venusDistributionAddress() {
    return venusDistributionAddress
}

function sharesTotal() {
    return sharesTotal
}

function paused() {
    return bool(paused)
}

function venusMarkets(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < venusMarkets.length
    return venusMarkets[arg1]
}

function sub_84a4a08a(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_84a4a08a.length
    return sub_84a4a08a[arg1]
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

function sub_9e8b23e7(?) {
    return sub_9e8b23e7
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

function entranceFeeFactorMax() {
    return entranceFeeFactorMax
}

function _fallback() payable {
    revert
}

function setDev(address arg1) {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0, 'Not authorised'
    devAddress = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setControllerFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0, 'Not authorised'
    controllerFee = arg1
}

function setEntranceFeeFactor(uint256 arg1) {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 <= entranceFeeFactorLL:
        revert with 0, 'too low'
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
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) + ext_call.return_data[0] < eth.balance(this.address):
        revert with 0, 'SafeMath: addition overflow'
    if sub_9e8b23e7 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (eth.balance(this.address) + ext_call.return_data[0] + sub_9e8b23e7)
}

function sub_f4df1f08(?) {
    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_9e8b23e7 = 0
}

function deleverageOnce(uint256 arg1) {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0, 'Not authorised'
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
    if not ext_call.return_data[0]:
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
        require ext_call.return_data[0]
        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
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
        if 1000 * ext_call.return_data[0] / arg1 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.redeemUnderlying(uint256 rg1) with:
             gas gas_remaining wei
            args (ext_call.return_data[0] - (1000 * ext_call.return_data[0] / arg1))
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
    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_9e8b23e7 = 0
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
        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
             gas gas_remaining wei
            args this.address
    else:
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ext_call.return_data[0] < 10^12:
            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                 gas gas_remaining wei
                args this.address
        else:
            idx = 0
            s = ext_call.return_data[0]
            while idx < borrowDepth:
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                   value s wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not s:
                    _93 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_93] = 26
                    mem[_93 + 32] = 'SafeMath: division by zero'
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
                _95 = mem[64]
                mem[64] = mem[64] + 64
                mem[_95] = 26
                mem[_95 + 32] = 'SafeMath: division by zero'
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
            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                 gas gas_remaining wei
                args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_9e8b23e7 = 0
    return 0
}

function pause() {
    if devAddress != msg.sender:
        revert with 0, 'Not authorised'
    if paused:
        revert with 0, 'Pausable: paused'
    stor0 = 1
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
    if devAddress != msg.sender:
        revert with 0, 'Not authorised'
    if not paused:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
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

function rebalance(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    if devAddress != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 > 599:
        revert with 0, '!rate'
    if arg2 > 10:
        revert with 0, '!depth'
    mem[100] = this.address
    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = mem[mem[64]]
    while eth.balance(this.address) < idx:
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
        if not ext_call.return_data[0]:
            _113 = mem[64]
            mem[64] = mem[64] + 64
            mem[_113] = 26
            mem[_113 + 32] = 'SafeMath: division by zero'
            if borrowRate <= 0:
                _115 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_115 + idx + 68] = mem[_113 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_115 + 68] = mem[_115 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _115 + -mem[64] + 100
            require borrowRate
            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _142 = mem[64]
            mem[64] = mem[64] + 64
            mem[_142] = 30
            mem[_142 + 32] = 'SafeMath: subtraction overflow'
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
                idx = ext_call.return_data[0]
                continue 
            _147 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_147 + idx + 68] = mem[_142 + idx + 32]
                idx = idx + 32
                continue 
            mem[_147 + 68] = mem[_147 + 70 len 30]
            revert with memory
              from mem[64]
               len _147 + -mem[64] + 100
        require ext_call.return_data[0]
        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _114 = mem[64]
        mem[64] = mem[64] + 64
        mem[_114] = 26
        mem[_114 + 32] = 'SafeMath: division by zero'
        if borrowRate <= 0:
            _118 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_118 + idx + 68] = mem[_114 + idx + 32]
                idx = idx + 32
                continue 
            mem[_118 + 68] = mem[_118 + 74 len 26]
            revert with memory
              from mem[64]
               len _118 + -mem[64] + 100
        require borrowRate
        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
             gas gas_remaining wei
            args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _146 = mem[64]
        mem[64] = mem[64] + 64
        mem[_146] = 30
        mem[_146 + 32] = 'SafeMath: subtraction overflow'
        if 1000 * ext_call.return_data[0] / borrowRate <= ext_call.return_data[0]:
            mem[mem[64] + 4] = ext_call.return_data[0] - (1000 * ext_call.return_data[0] / borrowRate)
            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.redeemUnderlying(uint256 rg1) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] - (1000 * ext_call.return_data[0] / borrowRate))
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = ext_call.return_data[0]
            continue 
        _151 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_151 + idx + 68] = mem[_146 + idx + 32]
            idx = idx + 32
            continue 
        mem[_151 + 68] = mem[_151 + 70 len 30]
        revert with memory
          from mem[64]
           len _151 + -mem[64] + 100
    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.repayBorrow() with:
       value idx wei
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
                _201 = mem[64]
                mem[64] = mem[64] + 64
                mem[_201] = 26
                mem[_201 + 32] = 'SafeMath: division by zero'
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
            _202 = mem[64]
            mem[64] = mem[64] + 64
            mem[_202] = 26
            mem[_202 + 32] = 'SafeMath: division by zero'
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
    emit StratRebalance(arg1, arg2);
}

function deposit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if paused:
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
    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_9e8b23e7 = 0
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
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
        staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) + ext_call.return_data[0] < eth.balance(this.address):
            revert with 0, 'SafeMath: addition overflow'
        if sub_9e8b23e7 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if eth.balance(this.address) + ext_call.return_data[0] + sub_9e8b23e7 <= 0:
            sharesTotal += arg1
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                mem[ceil32(return_data.size) + 357] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] < 10^12:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = ext_call.return_data[0]
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
                        _4110 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4110] = 26
                        mem[_4110 + 32] = 'SafeMath: division by zero'
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
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_9e8b23e7 = 0
            return arg1
        if sharesTotal <= 0:
            sharesTotal += arg1
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                mem[ceil32(return_data.size) + 357] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] < 10^12:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = ext_call.return_data[0]
                    while idx < borrowDepth:
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                           value s wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _4056 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4056] = 26
                            mem[_4056 + 32] = 'SafeMath: division by zero'
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
                        _4112 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4112] = 26
                        mem[_4112 + 32] = 'SafeMath: division by zero'
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
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_9e8b23e7 = 0
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
        if sub_9e8b23e7 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not arg1:
            mem[ceil32(return_data.size) + 357] = 26
            mem[ceil32(return_data.size) + 389] = 'SafeMath: division by zero'
            if eth.balance(this.address) + ext_call.return_data[0] + sub_9e8b23e7 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require eth.balance(this.address) + ext_call.return_data[0] + sub_9e8b23e7
            mem[64] = ceil32(return_data.size) + 485
            mem[ceil32(return_data.size) + 421] = 26
            mem[ceil32(return_data.size) + 453] = 'SafeMath: division by zero'
            if entranceFeeFactorMax <= 0:
                revert with 0, 'SafeMath: division by zero'
            require entranceFeeFactorMax
            sharesTotal += 0 / eth.balance(this.address) + ext_call.return_data[0] + sub_9e8b23e7 / entranceFeeFactorMax
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                mem[ceil32(return_data.size) + 485] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 489] = ext_call.return_data[0]
                require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] < 10^12:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = ext_call.return_data[0]
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
                        _4118 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4118] = 26
                        mem[_4118 + 32] = 'SafeMath: division by zero'
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
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_9e8b23e7 = 0
            return (0 / eth.balance(this.address) + ext_call.return_data[0] + sub_9e8b23e7 / entranceFeeFactorMax)
        require arg1
        if arg1 * sharesTotal / arg1 != sharesTotal:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(return_data.size) + 458 len 31]
        if not arg1 * sharesTotal:
            mem[ceil32(return_data.size) + 357] = 26
            mem[ceil32(return_data.size) + 389] = 'SafeMath: division by zero'
            if eth.balance(this.address) + ext_call.return_data[0] + sub_9e8b23e7 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require eth.balance(this.address) + ext_call.return_data[0] + sub_9e8b23e7
            mem[64] = ceil32(return_data.size) + 485
            mem[ceil32(return_data.size) + 421] = 26
            mem[ceil32(return_data.size) + 453] = 'SafeMath: division by zero'
            if entranceFeeFactorMax <= 0:
                revert with 0, 'SafeMath: division by zero'
            require entranceFeeFactorMax
            sharesTotal += 0 / eth.balance(this.address) + ext_call.return_data[0] + sub_9e8b23e7 / entranceFeeFactorMax
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                mem[ceil32(return_data.size) + 485] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 489] = ext_call.return_data[0]
                require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] < 10^12:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = ext_call.return_data[0]
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
                        _4116 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4116] = 26
                        mem[_4116 + 32] = 'SafeMath: division by zero'
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
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_9e8b23e7 = 0
            return (0 / eth.balance(this.address) + ext_call.return_data[0] + sub_9e8b23e7 / entranceFeeFactorMax)
        require arg1 * sharesTotal
        if arg1 * sharesTotal * entranceFeeFactor / arg1 * sharesTotal != entranceFeeFactor:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(return_data.size) + 458 len 31]
        mem[ceil32(return_data.size) + 357] = 26
        mem[ceil32(return_data.size) + 389] = 'SafeMath: division by zero'
        if eth.balance(this.address) + ext_call.return_data[0] + sub_9e8b23e7 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require eth.balance(this.address) + ext_call.return_data[0] + sub_9e8b23e7
        mem[64] = ceil32(return_data.size) + 485
        mem[ceil32(return_data.size) + 421] = 26
        mem[ceil32(return_data.size) + 453] = 'SafeMath: division by zero'
        if entranceFeeFactorMax <= 0:
            revert with 0, 'SafeMath: division by zero'
        require entranceFeeFactorMax
        sharesTotal += arg1 * sharesTotal * entranceFeeFactor / eth.balance(this.address) + ext_call.return_data[0] + sub_9e8b23e7 / entranceFeeFactorMax
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
        staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                 gas gas_remaining wei
                args this.address
        else:
            mem[ceil32(return_data.size) + 485] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 489] = ext_call.return_data[0]
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] < 10^12:
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                idx = 0
                s = ext_call.return_data[0]
                while idx < borrowDepth:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                       value s wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not s:
                        _4060 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4060] = 26
                        mem[_4060 + 32] = 'SafeMath: division by zero'
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
                    _4114 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4114] = 26
                    mem[_4114 + 32] = 'SafeMath: division by zero'
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
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
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
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
        staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) + ext_call.return_data[0] < eth.balance(this.address):
            revert with 0, 'SafeMath: addition overflow'
        if sub_9e8b23e7 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if eth.balance(this.address) + ext_call.return_data[0] + sub_9e8b23e7 <= 0:
            sharesTotal += arg1
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                mem[ceil32(return_data.size) + 357] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] < 10^12:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = ext_call.return_data[0]
                    while idx < borrowDepth:
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                           value s wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _4072 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4072] = 26
                            mem[_4072 + 32] = 'SafeMath: division by zero'
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
                        _4120 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4120] = 26
                        mem[_4120 + 32] = 'SafeMath: division by zero'
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
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_9e8b23e7 = 0
            return arg1
        if sharesTotal <= 0:
            sharesTotal += arg1
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                mem[ceil32(return_data.size) + 357] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] < 10^12:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = ext_call.return_data[0]
                    while idx < borrowDepth:
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                           value s wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _4076 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4076] = 26
                            mem[_4076 + 32] = 'SafeMath: division by zero'
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
                        _4122 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4122] = 26
                        mem[_4122 + 32] = 'SafeMath: division by zero'
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
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_9e8b23e7 = 0
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
        if sub_9e8b23e7 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not arg1:
            mem[ceil32(return_data.size) + 357] = 26
            mem[ceil32(return_data.size) + 389] = 'SafeMath: division by zero'
            if eth.balance(this.address) + ext_call.return_data[0] + sub_9e8b23e7 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require eth.balance(this.address) + ext_call.return_data[0] + sub_9e8b23e7
            mem[64] = ceil32(return_data.size) + 485
            mem[ceil32(return_data.size) + 421] = 26
            mem[ceil32(return_data.size) + 453] = 'SafeMath: division by zero'
            if entranceFeeFactorMax <= 0:
                revert with 0, 'SafeMath: division by zero'
            require entranceFeeFactorMax
            sharesTotal += 0 / eth.balance(this.address) + ext_call.return_data[0] + sub_9e8b23e7 / entranceFeeFactorMax
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                mem[ceil32(return_data.size) + 485] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 489] = ext_call.return_data[0]
                require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] < 10^12:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = ext_call.return_data[0]
                    while idx < borrowDepth:
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                           value s wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _4088 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4088] = 26
                            mem[_4088 + 32] = 'SafeMath: division by zero'
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
                        _4128 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4128] = 26
                        mem[_4128 + 32] = 'SafeMath: division by zero'
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
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_9e8b23e7 = 0
            return (0 / eth.balance(this.address) + ext_call.return_data[0] + sub_9e8b23e7 / entranceFeeFactorMax)
        require arg1
        if arg1 * sharesTotal / arg1 != sharesTotal:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(return_data.size) + 458 len 31]
        if not arg1 * sharesTotal:
            mem[ceil32(return_data.size) + 357] = 26
            mem[ceil32(return_data.size) + 389] = 'SafeMath: division by zero'
            if eth.balance(this.address) + ext_call.return_data[0] + sub_9e8b23e7 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require eth.balance(this.address) + ext_call.return_data[0] + sub_9e8b23e7
            mem[64] = ceil32(return_data.size) + 485
            mem[ceil32(return_data.size) + 421] = 26
            mem[ceil32(return_data.size) + 453] = 'SafeMath: division by zero'
            if entranceFeeFactorMax <= 0:
                revert with 0, 'SafeMath: division by zero'
            require entranceFeeFactorMax
            sharesTotal += 0 / eth.balance(this.address) + ext_call.return_data[0] + sub_9e8b23e7 / entranceFeeFactorMax
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                mem[ceil32(return_data.size) + 485] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 489] = ext_call.return_data[0]
                require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] < 10^12:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = ext_call.return_data[0]
                    while idx < borrowDepth:
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                           value s wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _4084 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4084] = 26
                            mem[_4084 + 32] = 'SafeMath: division by zero'
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
                        _4126 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4126] = 26
                        mem[_4126 + 32] = 'SafeMath: division by zero'
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
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_9e8b23e7 = 0
            return (0 / eth.balance(this.address) + ext_call.return_data[0] + sub_9e8b23e7 / entranceFeeFactorMax)
        require arg1 * sharesTotal
        if arg1 * sharesTotal * entranceFeeFactor / arg1 * sharesTotal != entranceFeeFactor:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(return_data.size) + 458 len 31]
        mem[ceil32(return_data.size) + 357] = 26
        mem[ceil32(return_data.size) + 389] = 'SafeMath: division by zero'
        if eth.balance(this.address) + ext_call.return_data[0] + sub_9e8b23e7 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require eth.balance(this.address) + ext_call.return_data[0] + sub_9e8b23e7
        mem[64] = ceil32(return_data.size) + 485
        mem[ceil32(return_data.size) + 421] = 26
        mem[ceil32(return_data.size) + 453] = 'SafeMath: division by zero'
        if entranceFeeFactorMax <= 0:
            revert with 0, 'SafeMath: division by zero'
        require entranceFeeFactorMax
        sharesTotal += arg1 * sharesTotal * entranceFeeFactor / eth.balance(this.address) + ext_call.return_data[0] + sub_9e8b23e7 / entranceFeeFactorMax
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
        staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
            call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                 gas gas_remaining wei
                args this.address
        else:
            mem[ceil32(return_data.size) + 485] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 489] = ext_call.return_data[0]
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] < 10^12:
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                idx = 0
                s = ext_call.return_data[0]
                while idx < borrowDepth:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                       value s wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not s:
                        _4080 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4080] = 26
                        mem[_4080 + 32] = 'SafeMath: division by zero'
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
                    _4124 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4124] = 26
                    mem[_4124 + 32] = 'SafeMath: division by zero'
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
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_9e8b23e7 = 0
    return (arg1 * sharesTotal * entranceFeeFactor / eth.balance(this.address) + ext_call.return_data[0] + sub_9e8b23e7 / entranceFeeFactorMax)
}



}
