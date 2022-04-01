contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - deposit(uint256 arg1)
#  - earn()
#
const vTokenAddress = 0xa07c5b74c9b40447a954e1466938b865b6bbea36

const venusAddress = 0xcf6bb5389c92bdda8a3747ddb454cb7a64626c63

const wbnbAddress = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c

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
uint256 supplyBal;
uint256 borrowBal;

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
    return bool(uint8(stor0.field_160))
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

function borrowBal() {
    return borrowBal
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

function supplyBal() {
    return supplyBal
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

function sub_bac92437(?) {
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

function pause() {
    if devAddress != msg.sender:
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
    call 0xcf6bb5389c92bdda8a3747ddb454cb7a64626c63 with:
       funct uint32(stor5)
         gas gas_remaining wei
        args 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), 0
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor5):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), 0
        mem[488 len 0] = 0
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
           funct uint32(stor5)
             gas gas_remaining wei
            args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[488 len 4]
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
        mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), 0
        mem[ceil32(return_data.size) + 489 len 0] = 0
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
           funct uint32(stor5)
             gas gas_remaining wei
            args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[ceil32(return_data.size) + 489 len 4]
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
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len 22]
}

function deleverageOnce(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not borrowBal:
        if borrowRate <= 0:
            revert with 0, 'SafeMath: division by zero'
        require borrowRate
        if 0 / borrowRate > supplyBal:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.redeemUnderlying(uint256 rg1) with:
             gas gas_remaining wei
            args (supplyBal - (0 / borrowRate))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        # nil
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
        mem[64] = 224
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if 1000 * borrowBal / borrowRate > supplyBal:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[228] = supplyBal - (1000 * borrowBal / borrowRate)
        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.redeemUnderlying(uint256 rg1) with:
             gas gas_remaining wei
            args (supplyBal - (1000 * borrowBal / borrowRate))
        mem[224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
                _211 = mem[64]
                mem[64] = mem[64] + 64
                mem[_211] = 26
                mem[_211 + 32] = 'SafeMath: division by zero'
                if borrowRate <= 0:
                    _214 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_214 + idx + 68] = mem[_211 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_214 + 68] = mem[_214 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _214 + -mem[64] + 100
                require borrowRate
                _234 = mem[64]
                mem[64] = mem[64] + 64
                mem[_234] = 30
                mem[_234 + 32] = 'SafeMath: subtraction overflow'
                if 0 / borrowRate <= supplyBal:
                    mem[mem[64] + 4] = supplyBal - (0 / borrowRate)
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.redeemUnderlying(uint256 rg1) with:
                         gas gas_remaining wei
                        args (supplyBal - (0 / borrowRate))
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    s = 0 / borrowRate
                    continue 
                _245 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_245 + idx + 68] = mem[_234 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_245 + 68] = mem[_245 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _245 + -mem[64] + 100
            require borrowBal
            if 1000 * borrowBal / borrowBal != 1000:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _213 = mem[64]
            mem[64] = mem[64] + 64
            mem[_213] = 26
            mem[_213 + 32] = 'SafeMath: division by zero'
            if borrowRate <= 0:
                _221 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_221 + idx + 68] = mem[_213 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_221 + 68] = mem[_221 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _221 + -mem[64] + 100
            require borrowRate
            _243 = mem[64]
            mem[64] = mem[64] + 64
            mem[_243] = 30
            mem[_243 + 32] = 'SafeMath: subtraction overflow'
            if 1000 * borrowBal / borrowRate <= supplyBal:
                mem[mem[64] + 4] = supplyBal - (1000 * borrowBal / borrowRate)
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.redeemUnderlying(uint256 rg1) with:
                     gas gas_remaining wei
                    args (supplyBal - (1000 * borrowBal / borrowRate))
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                s = 1000 * borrowBal / borrowRate
                continue 
            _253 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_253 + idx + 68] = mem[_243 + idx + 32]
                idx = idx + 32
                continue 
            mem[_253 + 68] = mem[_253 + 70 len 30]
            revert with memory
              from mem[64]
               len _253 + -mem[64] + 100
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
}

function unpause() {
    if devAddress != msg.sender:
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
        if return_data.size <= 0:
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
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
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

function farm() {
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        if eth.balance(this.address) >= 10^12:
            if not borrowBal:
                if borrowRate <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require borrowRate
                mem[64] = 224
                mem[192] = 'SafeMath: subtraction overflow'
                if 0 / borrowRate > supplyBal:
                    revert with 0, 'SafeMath: subtraction overflow'
                idx = 0
                s = eth.balance(this.address)
                while idx < borrowDepth:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                       value s wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx:
                        if not s:
                            _268 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_268] = 26
                            mem[_268 + 32] = 'SafeMath: division by zero'
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
                        _288 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_288] = 26
                        mem[_288 + 32] = 'SafeMath: division by zero'
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
                    if not s + supplyBal - (0 / borrowRate):
                        _282 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_282] = 26
                        mem[_282 + 32] = 'SafeMath: division by zero'
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
                    require s + supplyBal - (0 / borrowRate)
                    if (s * borrowRate) + (supplyBal * borrowRate) - (0 / borrowRate * borrowRate) / s + supplyBal - (0 / borrowRate) != borrowRate:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _292 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_292] = 26
                    mem[_292 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = (s * borrowRate) + (supplyBal * borrowRate) - (0 / borrowRate * borrowRate) / 1000
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args ((s * borrowRate) + (supplyBal * borrowRate) - (0 / borrowRate * borrowRate) / 1000)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = (s * borrowRate) + (supplyBal * borrowRate) - (0 / borrowRate * borrowRate) / 1000
                    continue 
            else:
                require borrowBal
                if 1000 * borrowBal / borrowBal != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if borrowRate <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require borrowRate
                mem[64] = 224
                mem[192] = 'SafeMath: subtraction overflow'
                if 1000 * borrowBal / borrowRate > supplyBal:
                    revert with 0, 'SafeMath: subtraction overflow'
                idx = 0
                s = eth.balance(this.address)
                while idx < borrowDepth:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                       value s wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx:
                        if not s:
                            _264 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_264] = 26
                            mem[_264 + 32] = 'SafeMath: division by zero'
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
                        _287 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_287] = 26
                        mem[_287 + 32] = 'SafeMath: division by zero'
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
                    if not s + supplyBal - (1000 * borrowBal / borrowRate):
                        _280 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_280] = 26
                        mem[_280 + 32] = 'SafeMath: division by zero'
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
                    require s + supplyBal - (1000 * borrowBal / borrowRate)
                    if (s * borrowRate) + (supplyBal * borrowRate) - (1000 * borrowBal / borrowRate * borrowRate) / s + supplyBal - (1000 * borrowBal / borrowRate) != borrowRate:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _291 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_291] = 26
                    mem[_291 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = (s * borrowRate) + (supplyBal * borrowRate) - (1000 * borrowBal / borrowRate * borrowRate) / 1000
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args ((s * borrowRate) + (supplyBal * borrowRate) - (1000 * borrowBal / borrowRate * borrowRate) / 1000)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = (s * borrowRate) + (supplyBal * borrowRate) - (1000 * borrowBal / borrowRate * borrowRate) / 1000
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
    else:
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) >= 10^12:
            if not borrowBal:
                if borrowRate <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require borrowRate
                mem[64] = 224
                mem[192] = 'SafeMath: subtraction overflow'
                if 0 / borrowRate > supplyBal:
                    revert with 0, 'SafeMath: subtraction overflow'
                idx = 0
                s = eth.balance(this.address)
                while idx < borrowDepth:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                       value s wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx:
                        if not s:
                            _276 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_276] = 26
                            mem[_276 + 32] = 'SafeMath: division by zero'
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
                        _290 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_290] = 26
                        mem[_290 + 32] = 'SafeMath: division by zero'
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
                    if not s + supplyBal - (0 / borrowRate):
                        _286 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_286] = 26
                        mem[_286 + 32] = 'SafeMath: division by zero'
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
                    require s + supplyBal - (0 / borrowRate)
                    if (s * borrowRate) + (supplyBal * borrowRate) - (0 / borrowRate * borrowRate) / s + supplyBal - (0 / borrowRate) != borrowRate:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _294 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_294] = 26
                    mem[_294 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = (s * borrowRate) + (supplyBal * borrowRate) - (0 / borrowRate * borrowRate) / 1000
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args ((s * borrowRate) + (supplyBal * borrowRate) - (0 / borrowRate * borrowRate) / 1000)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = (s * borrowRate) + (supplyBal * borrowRate) - (0 / borrowRate * borrowRate) / 1000
                    continue 
            else:
                require borrowBal
                if 1000 * borrowBal / borrowBal != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if borrowRate <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require borrowRate
                mem[64] = 224
                mem[192] = 'SafeMath: subtraction overflow'
                if 1000 * borrowBal / borrowRate > supplyBal:
                    revert with 0, 'SafeMath: subtraction overflow'
                idx = 0
                s = eth.balance(this.address)
                while idx < borrowDepth:
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                       value s wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx:
                        if not s:
                            _272 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_272] = 26
                            mem[_272 + 32] = 'SafeMath: division by zero'
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
                        _289 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_289] = 26
                        mem[_289 + 32] = 'SafeMath: division by zero'
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
                    if not s + supplyBal - (1000 * borrowBal / borrowRate):
                        _284 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_284] = 26
                        mem[_284 + 32] = 'SafeMath: division by zero'
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
                    require s + supplyBal - (1000 * borrowBal / borrowRate)
                    if (s * borrowRate) + (supplyBal * borrowRate) - (1000 * borrowBal / borrowRate * borrowRate) / s + supplyBal - (1000 * borrowBal / borrowRate) != borrowRate:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _293 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_293] = 26
                    mem[_293 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = (s * borrowRate) + (supplyBal * borrowRate) - (1000 * borrowBal / borrowRate * borrowRate) / 1000
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args ((s * borrowRate) + (supplyBal * borrowRate) - (1000 * borrowBal / borrowRate * borrowRate) / 1000)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = (s * borrowRate) + (supplyBal * borrowRate) - (1000 * borrowBal / borrowRate * borrowRate) / 1000
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
    if devAddress != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 > 599:
        revert with 0, '!rate'
    if arg2 > 10:
        revert with 0, '!depth'
    if not borrowBal:
        if borrowRate <= 0:
            revert with 0, 'SafeMath: division by zero'
        require borrowRate
        if 0 / borrowRate > supplyBal:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.redeemUnderlying(uint256 rg1) with:
             gas gas_remaining wei
            args (supplyBal - (0 / borrowRate))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        # nil
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
        mem[64] = 224
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if 1000 * borrowBal / borrowRate > supplyBal:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[228] = supplyBal - (1000 * borrowBal / borrowRate)
        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.redeemUnderlying(uint256 rg1) with:
             gas gas_remaining wei
            args (supplyBal - (1000 * borrowBal / borrowRate))
        mem[224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
                _597 = mem[64]
                mem[64] = mem[64] + 64
                mem[_597] = 26
                mem[_597 + 32] = 'SafeMath: division by zero'
                if borrowRate <= 0:
                    _604 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_604 + idx + 68] = mem[_597 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_604 + 68] = mem[_604 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _604 + -mem[64] + 100
                require borrowRate
                _633 = mem[64]
                mem[64] = mem[64] + 64
                mem[_633] = 30
                mem[_633 + 32] = 'SafeMath: subtraction overflow'
                if 0 / borrowRate <= supplyBal:
                    mem[mem[64] + 4] = supplyBal - (0 / borrowRate)
                    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.redeemUnderlying(uint256 rg1) with:
                         gas gas_remaining wei
                        args (supplyBal - (0 / borrowRate))
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    s = 0 / borrowRate
                    continue 
                _647 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_647 + idx + 68] = mem[_633 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_647 + 68] = mem[_647 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _647 + -mem[64] + 100
            require borrowBal
            if 1000 * borrowBal / borrowBal != 1000:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _603 = mem[64]
            mem[64] = mem[64] + 64
            mem[_603] = 26
            mem[_603 + 32] = 'SafeMath: division by zero'
            if borrowRate <= 0:
                _616 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_616 + idx + 68] = mem[_603 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_616 + 68] = mem[_616 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _616 + -mem[64] + 100
            require borrowRate
            _645 = mem[64]
            mem[64] = mem[64] + 64
            mem[_645] = 30
            mem[_645 + 32] = 'SafeMath: subtraction overflow'
            if 1000 * borrowBal / borrowRate <= supplyBal:
                mem[mem[64] + 4] = supplyBal - (1000 * borrowBal / borrowRate)
                require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.redeemUnderlying(uint256 rg1) with:
                     gas gas_remaining wei
                    args (supplyBal - (1000 * borrowBal / borrowRate))
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                s = 1000 * borrowBal / borrowRate
                continue 
            _659 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_659 + idx + 68] = mem[_645 + idx + 32]
                idx = idx + 32
                continue 
            mem[_659 + 68] = mem[_659 + 70 len 30]
            revert with memory
              from mem[64]
               len _659 + -mem[64] + 100
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
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
        staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            if eth.balance(this.address) >= 10^12:
                if not borrowBal:
                    _713 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_713] = 26
                    mem[_713 + 32] = 'SafeMath: division by zero'
                    if borrowRate <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require borrowRate
                    _754 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_754] = 30
                    mem[_754 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / borrowRate > supplyBal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    idx = 0
                    s = eth.balance(this.address)
                    while idx < borrowDepth:
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                           value s wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx:
                            if not s:
                                _1173 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1173] = 26
                                mem[_1173 + 32] = 'SafeMath: division by zero'
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
                            _1196 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1196] = 26
                            mem[_1196 + 32] = 'SafeMath: division by zero'
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
                        if not s + supplyBal - (0 / borrowRate):
                            _1188 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1188] = 26
                            mem[_1188 + 32] = 'SafeMath: division by zero'
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
                        require s + supplyBal - (0 / borrowRate)
                        if (s * borrowRate) + (supplyBal * borrowRate) - (0 / borrowRate * borrowRate) / s + supplyBal - (0 / borrowRate) != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1201 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1201] = 26
                        mem[_1201 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = (s * borrowRate) + (supplyBal * borrowRate) - (0 / borrowRate * borrowRate) / 1000
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args ((s * borrowRate) + (supplyBal * borrowRate) - (0 / borrowRate * borrowRate) / 1000)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = (s * borrowRate) + (supplyBal * borrowRate) - (0 / borrowRate * borrowRate) / 1000
                        continue 
                else:
                    require borrowBal
                    if 1000 * borrowBal / borrowBal != 1000:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _719 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_719] = 26
                    mem[_719 + 32] = 'SafeMath: division by zero'
                    if borrowRate <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require borrowRate
                    _771 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_771] = 30
                    mem[_771 + 32] = 'SafeMath: subtraction overflow'
                    if 1000 * borrowBal / borrowRate > supplyBal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    idx = 0
                    s = eth.balance(this.address)
                    while idx < borrowDepth:
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                           value s wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx:
                            if not s:
                                _1169 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1169] = 26
                                mem[_1169 + 32] = 'SafeMath: division by zero'
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
                            _1195 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1195] = 26
                            mem[_1195 + 32] = 'SafeMath: division by zero'
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
                        if not s + supplyBal - (1000 * borrowBal / borrowRate):
                            _1186 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1186] = 26
                            mem[_1186 + 32] = 'SafeMath: division by zero'
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
                        require s + supplyBal - (1000 * borrowBal / borrowRate)
                        if (s * borrowRate) + (supplyBal * borrowRate) - (1000 * borrowBal / borrowRate * borrowRate) / s + supplyBal - (1000 * borrowBal / borrowRate) != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1200 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1200] = 26
                        mem[_1200 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = (s * borrowRate) + (supplyBal * borrowRate) - (1000 * borrowBal / borrowRate * borrowRate) / 1000
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args ((s * borrowRate) + (supplyBal * borrowRate) - (1000 * borrowBal / borrowRate * borrowRate) / 1000)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = (s * borrowRate) + (supplyBal * borrowRate) - (1000 * borrowBal / borrowRate * borrowRate) / 1000
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
        else:
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) >= 10^12:
                if not borrowBal:
                    _731 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_731] = 26
                    mem[_731 + 32] = 'SafeMath: division by zero'
                    if borrowRate <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require borrowRate
                    _786 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_786] = 30
                    mem[_786 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / borrowRate > supplyBal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    idx = 0
                    s = eth.balance(this.address)
                    while idx < borrowDepth:
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                           value s wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx:
                            if not s:
                                _1181 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1181] = 26
                                mem[_1181 + 32] = 'SafeMath: division by zero'
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
                            _1198 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1198] = 26
                            mem[_1198 + 32] = 'SafeMath: division by zero'
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
                        if not s + supplyBal - (0 / borrowRate):
                            _1192 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1192] = 26
                            mem[_1192 + 32] = 'SafeMath: division by zero'
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
                        require s + supplyBal - (0 / borrowRate)
                        if (s * borrowRate) + (supplyBal * borrowRate) - (0 / borrowRate * borrowRate) / s + supplyBal - (0 / borrowRate) != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1203 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1203] = 26
                        mem[_1203 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = (s * borrowRate) + (supplyBal * borrowRate) - (0 / borrowRate * borrowRate) / 1000
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args ((s * borrowRate) + (supplyBal * borrowRate) - (0 / borrowRate * borrowRate) / 1000)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = (s * borrowRate) + (supplyBal * borrowRate) - (0 / borrowRate * borrowRate) / 1000
                        continue 
                else:
                    require borrowBal
                    if 1000 * borrowBal / borrowBal != 1000:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _743 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_743] = 26
                    mem[_743 + 32] = 'SafeMath: division by zero'
                    if borrowRate <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require borrowRate
                    _805 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_805] = 30
                    mem[_805 + 32] = 'SafeMath: subtraction overflow'
                    if 1000 * borrowBal / borrowRate > supplyBal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    idx = 0
                    s = eth.balance(this.address)
                    while idx < borrowDepth:
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.mint() with:
                           value s wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx:
                            if not s:
                                _1177 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1177] = 26
                                mem[_1177 + 32] = 'SafeMath: division by zero'
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
                            _1197 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1197] = 26
                            mem[_1197 + 32] = 'SafeMath: division by zero'
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
                        if not s + supplyBal - (1000 * borrowBal / borrowRate):
                            _1190 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1190] = 26
                            mem[_1190 + 32] = 'SafeMath: division by zero'
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
                        require s + supplyBal - (1000 * borrowBal / borrowRate)
                        if (s * borrowRate) + (supplyBal * borrowRate) - (1000 * borrowBal / borrowRate * borrowRate) / s + supplyBal - (1000 * borrowBal / borrowRate) != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1202 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1202] = 26
                        mem[_1202 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = (s * borrowRate) + (supplyBal * borrowRate) - (1000 * borrowBal / borrowRate * borrowRate) / 1000
                        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
                        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.borrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args ((s * borrowRate) + (supplyBal * borrowRate) - (1000 * borrowBal / borrowRate * borrowRate) / 1000)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = (s * borrowRate) + (supplyBal * borrowRate) - (1000 * borrowBal / borrowRate * borrowRate) / 1000
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
        emit StratRebalance(arg1, arg2);
}



}
